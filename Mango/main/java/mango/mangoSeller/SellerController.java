package mango.mangoSeller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import mango.common.EgovWebUtil;
import mango.common.service.Criteria;
import mango.common.service.PageMakerDTO;
import mango.common.util.FileUtil;
import mango.common.util.SHA256;
import mango.common.util.SellerURLValue;
import mango.mango.controller.InfoController;
import mango.mango.model.GoodsFileVO;
import mango.mango.model.GoodsVO;
import mango.mango.model.MemberVO;
import mango.mango.service.GoodsService;
import mango.mango.service.MemberService;

@Controller
@RequestMapping(value = SellerURLValue.MANGO_SELLER)
public class SellerController {
	private static Logger logger = LoggerFactory.getLogger(InfoController.class);

	@Resource(name = "MemberService")
	private MemberService MemberService;

	@Resource(name = "GoodsService")
	private GoodsService GoodsService;

	@Resource(name = "fileUtil")
	private FileUtil fileUtil;

	// 상품등록 페이지
	@RequestMapping(value = "/uploadGoods")
	public String uploadGoods(ModelMap model, Criteria cri) throws Exception {

		return "/seller/page/uploadGoods";
	}

	// 상품등록 페이지
	@RequestMapping(value = "/uploadGoods/insert", method = RequestMethod.POST)
	public String insertuploadGoods(@RequestParam("multiFile") List<MultipartFile> multiFileList, ModelMap model,
			Criteria cri, GoodsFileVO gfVO, MemberVO mVO, HttpSession session, GoodsVO gVO,
			MultipartHttpServletRequest request) throws Exception {
		EgovWebUtil uuid = new EgovWebUtil();
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-HH-mm-ss-SS");

		String UUID = uuid.getUUID(); // uuid설정 (난수설정)

		String sellername = mVO.getSellerName(); // mVO에 저장된 로그인값의 sellername을 호출

		String time = format.format(date); // 현재시간 설정

		String path = "c:\\upload\\goodsImg\\"; // 업로드파일 저장 path
		
		String sysPath = "http://localhost:8080/img/goodsImg/";
		
		String uploadPath = "";

		String sysUploadPath = "";
		
		for (int i = 0; i < multiFileList.size(); i++) { // multiFileList만큼 반복작업

			String originName = multiFileList.get(i).getOriginalFilename(); // 실제파일이름
			
			String original = time + "_" + multiFileList.get(i).getOriginalFilename();
			
			String extension = originName.substring(originName.lastIndexOf(".")); // 확장자 추출

			long fileSize = multiFileList.get(i).getSize(); // 파일 사이즈 추출

			uploadPath = path + sellername + "\\" + original; // 실제 저장되는 path와 저장되는 파일이름
			
			sysUploadPath = sysPath + sellername + "/" + original;

			gfVO.setExtension(extension); // 확장자 저장
			gfVO.setOriginName(originName); // 실제파일이름
			gfVO.setRealPath(sysUploadPath); // 실제 저장되는 path와 저장되는 파일이름
			gfVO.setGoodsId(UUID); // goodsid 난수설정
			gfVO.setFileSize(fileSize); // 파일 사이즈

			GoodsService.insertGoodsFile(gfVO); // gfVO에 넣어준 값들을 insertGoodsFile에 담아줌

			File fileCheck = new File(uploadPath);

			if (!fileCheck.exists()) // uploadPath가 있는지 확인 후 없으면 폴더 생성
				fileCheck.mkdirs();
		}

		try {
			for (int i = 0; i < multiFileList.size(); i++) {
				File uploadFile = new File(uploadPath);

				uploadPath = path + sellername + "\\" + time + "_" + multiFileList.get(i).getOriginalFilename();

				multiFileList.get(i).transferTo(uploadFile); // uploadFile에 multiFileList를 각각 저장

				System.out.println("다중 파일 업로드 성공");

			}
		} catch (IllegalStateException | IOException e) {
			System.out.println("다중 파일 업로드 실패");

			for (int i = 0; i < multiFileList.size(); i++) { // 업로드 실패시 저장한 이미지 삭제
				new File(uploadPath).delete();
			}
			e.printStackTrace();
		}

		gVO.setGoodsId(UUID); // gVO goodsid 난수설정
		GoodsService.insertGoods(gVO);

		return "/seller/page/uploadGoods";
	}

	// 사업주 회원가입 페이지
	@RequestMapping(value = "/sellerRegister")
	public String sellerRegister(ModelMap model, Criteria cri) throws Exception {
		return "seller/page/sellerRegister";
	}

	@RequestMapping(value = "/sellerRegister/insert", method = RequestMethod.POST)
	public String insertsellerRegister(ModelMap model, Criteria cri, MemberVO mVO, String id,
			HttpServletRequest request, @RequestParam("file") MultipartFile file) throws Exception {
		SHA256 sha256 = new SHA256(); // 암호화 유틸 불러오기

		System.out.println("logoImg: " + file);
		Date date = new Date(System.currentTimeMillis());

		SimpleDateFormat format = new SimpleDateFormat("yy-MM-HH-mm-ss-SS");
		String time = format.format(date);

		MultipartFile mf = file;
		String sellername = mVO.getSellerName();
		String fileName = file.getName();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);

		String path = "c:\\upload\\logoImg\\";
		String sysPath = "http://localhost:8080/img/logoImg/";
		String uploadPath = "";
		String sysUploadPath = "";

		String original = time + "_" + mf.getOriginalFilename();
		uploadPath = path + sellername + "\\" + original;
		sysUploadPath = sysPath + sellername + "/" + original;
		
		mVO.setLogoImg(sysUploadPath);

		File fileCheck = new File(uploadPath);

		if (!fileCheck.exists())
			fileCheck.mkdirs();

		if (mf != null) {
			try {
				mf.transferTo(new File(uploadPath));
				System.out.println("파일 업로드 성공");
			} catch (Exception e) {
				System.out.println("파일 업로드 실패");
			}
		}

		String encryPassword = sha256.encrypt(mVO.getPassword()); // 비밀번호 암호화
		mVO.setPassword(encryPassword); // 암호화 된 비밀번호 넣기

		MemberService.sellerRegister(mVO);
		String getId = MemberService.getId(id);
		model.addAttribute("type", "register");

		if (id != null) {
			model.addAttribute("isSuccess", true);
		} else {
			model.addAttribute("isSuccess", false);
			return "/user/page/process";
		}
		return "/user/page/process";
	}

	// 상품 리스트 페이지
	@RequestMapping(value = "/goodsList")
	public String goodsList(ModelMap model, Criteria cri, GoodsVO gVO, HttpSession session,
			@RequestParam(value = "pageNumCri", required = false) String pageNumCri) throws Exception {

		MemberVO login = (MemberVO) session.getAttribute("login");
		gVO.setId(login.getId());

		int goodsTotal = GoodsService.selectSellerGoodsCount(gVO);
		// 페이징
		PageMakerDTO pageMaker = new PageMakerDTO(cri, goodsTotal);
		if (pageNumCri == null) {
			pageNumCri = "1";
		}
		gVO.setSkip((Integer.parseInt(pageNumCri) - 1) * cri.getAmount());
		gVO.setAmount(cri.getAmount());

		List<GoodsVO> goodsList = GoodsService.selectSellerGoodsList(gVO);
		model.addAttribute("goodsList", goodsList);
		model.put("pageMaker", pageMaker);

		return "/seller/page/goodsList";
	}

	// 상품 리스트 삭제
	@RequestMapping(value = "/goodsList/delete")
	public String deleteGoodsList(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.deleteGoods(gVO.getGoodsId());

		return "redirect:/page/goodsList.do";
	}

	// 상품 리스트 수정
	@RequestMapping(value = "/goodsList/update")
	public String updateGoodsList(ModelMap model, Criteria cri, GoodsVO gVO) throws Exception {

		GoodsService.modifyGoods(gVO);

		return "redirect:/page/goodsList.do";
	}

	// 매출내역 페이지
	@RequestMapping(value = "/salesDetails")
	public String salesDetails(ModelMap model, Criteria cri) throws Exception {
		return "/seller/page/salesDetails";
	}

}
