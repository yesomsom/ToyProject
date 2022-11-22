
// MFCApplication1Dlg.cpp: 구현 파일
//

#include "pch.h"
#include "framework.h"
#include "MFCApplication1.h"
#include "MFCApplication1Dlg.h"
#include "afxdialogex.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define plu 1 //switch case 사용을 위해 상수로 선언
#define sub 2
#define mul 3
#define div 4

// 응용 프로그램 정보에 사용되는 CAboutDlg 대화 상자입니다.

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// 대화 상자 데이터입니다.
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_ABOUTBOX };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 지원입니다.

// 구현입니다.
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(IDD_ABOUTBOX)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()


// CMFCApplication1Dlg 대화 상자



CMFCApplication1Dlg::CMFCApplication1Dlg(CWnd* pParent /*=nullptr*/)
	: CDialogEx(IDD_MFCAPPLICATION1_DIALOG, pParent)
	//, m_result(_T(""))
{
	m_result = _T("");
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
	m_bEqualClk = false;
}

void CMFCApplication1Dlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_EDIT1, m_result);
}

BEGIN_MESSAGE_MAP(CMFCApplication1Dlg, CDialogEx)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(c_b_cle, &CMFCApplication1Dlg::OnBnClickedbcle)
	ON_BN_CLICKED(c_b_0, &CMFCApplication1Dlg::OnBnClickedb0)
	ON_BN_CLICKED(c_b_1, &CMFCApplication1Dlg::OnBnClickedb1)
	ON_BN_CLICKED(c_b_2, &CMFCApplication1Dlg::OnBnClickedb2)
	ON_BN_CLICKED(c_b_3, &CMFCApplication1Dlg::OnBnClickedb3)
	ON_BN_CLICKED(c_b_4, &CMFCApplication1Dlg::OnBnClickedb4)
	ON_BN_CLICKED(c_b_5, &CMFCApplication1Dlg::OnBnClickedb5)
	ON_BN_CLICKED(c_b_6, &CMFCApplication1Dlg::OnBnClickedb6)
	ON_BN_CLICKED(c_b_7, &CMFCApplication1Dlg::OnBnClickedb7)
	ON_BN_CLICKED(c_b_8, &CMFCApplication1Dlg::OnBnClickedb8)
	ON_BN_CLICKED(c_b_9, &CMFCApplication1Dlg::OnBnClickedb9)
	ON_BN_CLICKED(c_b_dot2, &CMFCApplication1Dlg::OnBnClickedbdot2)
	ON_BN_CLICKED(c_b_eql2, &CMFCApplication1Dlg::OnBnClickedbeql2)
	ON_BN_CLICKED(c_b_lotto, &CMFCApplication1Dlg::OnBnClickedblotto)
	ON_BN_CLICKED(c_b_plu, &CMFCApplication1Dlg::OnBnClickedbplu)
	ON_BN_CLICKED(c_b_min, &CMFCApplication1Dlg::OnBnClickedbmin)
	ON_BN_CLICKED(c_b_gop, &CMFCApplication1Dlg::OnBnClickedbgop)
	ON_BN_CLICKED(c_b_sla, &CMFCApplication1Dlg::OnBnClickedbsla)
END_MESSAGE_MAP()


// CMFCApplication1Dlg 메시지 처리기

BOOL CMFCApplication1Dlg::OnInitDialog()
{
	CDialogEx::OnInitDialog();

	// 시스템 메뉴에 "정보..." 메뉴 항목을 추가합니다.

	// IDM_ABOUTBOX는 시스템 명령 범위에 있어야 합니다.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != nullptr)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// 이 대화 상자의 아이콘을 설정합니다.  응용 프로그램의 주 창이 대화 상자가 아닐 경우에는
	//  프레임워크가 이 작업을 자동으로 수행합니다.
	SetIcon(m_hIcon, TRUE);			// 큰 아이콘을 설정합니다.
	SetIcon(m_hIcon, FALSE);		// 작은 아이콘을 설정합니다.

	// TODO: 여기에 추가 초기화 작업을 추가합니다.

	CString str;
	str.Format(_T("계산기"));
	SetWindowText(str);
	return TRUE;  // 포커스를 컨트롤에 설정하지 않으면 TRUE를 반환합니다.
}

void CMFCApplication1Dlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialogEx::OnSysCommand(nID, lParam);
	}
}

// 대화 상자에 최소화 단추를 추가할 경우 아이콘을 그리려면
//  아래 코드가 필요합니다.  문서/뷰 모델을 사용하는 MFC 애플리케이션의 경우에는
//  프레임워크에서 이 작업을 자동으로 수행합니다.

void CMFCApplication1Dlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 그리기를 위한 디바이스 컨텍스트입니다.

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 클라이언트 사각형에서 아이콘을 가운데에 맞춥니다.
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 아이콘을 그립니다.
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialogEx::OnPaint();
	}
}

// 사용자가 최소화된 창을 끄는 동안에 커서가 표시되도록 시스템에서
//  이 함수를 호출합니다.
HCURSOR CMFCApplication1Dlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}


void CMFCApplication1Dlg::OnBnClickedbcle()
{
	m_result.Empty();
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb0()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 0을 출력하겠다.
	}

	m_result += _T("0"); //문자 0
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb1()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 1을 출력하겠다.
	}

	m_result += _T("1"); //문자 1
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb2()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 2을 출력하겠다.
	}

	m_result += _T("2"); //문자 2
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb3()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 3을 출력하겠다.
	}

	m_result += _T("3"); //문자 3
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb4()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 4을 출력하겠다.
	}

	m_result += _T("4"); //문자 4
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb5()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 5을 출력하겠다.
	}

	m_result += _T("5"); //문자 5
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb6()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 6을 출력하겠다.
	}

	m_result += _T("6"); //문자 6
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb7()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 7을 출력하겠다.
	}

	m_result += _T("7"); //문자 7
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb8()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 8을 출력하겠다.
	}

	m_result += _T("8"); //문자 8
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedb9()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, 9을 출력하겠다.
	}

	m_result += _T("9"); //문자 9
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedbdot2()
{
	if (m_bEqualClk) {
		m_result.Empty();
		m_bEqualClk = false; //변수에 있는 것을 컨트롤에 출력, .을 출력하겠다.
	}

	m_result += _T(".");
	UpdateData(false); // 변수에 있는 것을 컨트롤에 출력 (true는 컨트롤에 있는 것을 변수에 저장)
}


void CMFCApplication1Dlg::OnBnClickedbplu()
{
	m_cType = plu;
	m_buf = m_result;
	m_result.Empty();
}


void CMFCApplication1Dlg::OnBnClickedbmin()
{
	m_cType = sub;
	m_buf = m_result;
	m_result.Empty();
}


void CMFCApplication1Dlg::OnBnClickedbgop()
{
	m_cType = mul;
	m_buf = m_result;
	m_result.Empty();
}


void CMFCApplication1Dlg::OnBnClickedbsla()
{
	m_cType = div;
	m_buf = m_result;
	m_result.Empty();
}


void CMFCApplication1Dlg::OnBnClickedbeql2()
{
	double op1, op2, result;

	op1 = _tstof(m_buf); // _tstof: 문자를 숫자로 변환하는 명령어
	op2 = _tstof(m_result);
	result = 0;

	switch (m_cType) {
	case plu: //1
		result = op1 + op2; // 더하기
		break;
	case sub: //2
		result = op1 - op2; // 빼기
		break;
	case mul: //3
		result = op1 * op2; // 곱하기
		break;
	case div: //4
		result = op1 / op2; // 나누기
		break;
	}

	m_result.Format(_T("%.6f"), result);

	UpdateData(false);
	m_bEqualClk = true;
}


void CMFCApplication1Dlg::OnBnClickedblotto()
{
	UpdateData(false);
	CClientDC dc(this);
	srand((unsigned)time(NULL)); // 난수 발생 초기화

	CString str, lotto;
	for (int i = 0; i < 6; i++) {
		str.Format(_T("%2d "), rand() % 45 + 1); //32768을 45로 나눈 나머지 값의 범위는 0~44이고, 이 값에 1을 더하므로 1~45 사이의 난수 생성
		lotto = lotto + str;
	}
	
	SetDlgItemText(IDC_EDIT1, lotto);
	UpdateData(true); // true는 컨트롤에 있는 것을 변수에 저장

}


