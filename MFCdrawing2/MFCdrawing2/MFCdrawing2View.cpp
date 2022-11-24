
// MFCdrawing2View.cpp: CMFCdrawing2View 클래스의 구현
//

#include "pch.h"
#include "framework.h"
// SHARED_HANDLERS는 미리 보기, 축소판 그림 및 검색 필터 처리기를 구현하는 ATL 프로젝트에서 정의할 수 있으며
// 해당 프로젝트와 문서 코드를 공유하도록 해 줍니다.
#ifndef SHARED_HANDLERS
#include "MFCdrawing2.h"
#endif

#include "MFCdrawing2Doc.h"
#include "MFCdrawing2View.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// CMFCdrawing2View

IMPLEMENT_DYNCREATE(CMFCdrawing2View, CView)

BEGIN_MESSAGE_MAP(CMFCdrawing2View, CView)
	// 표준 인쇄 명령입니다.
	ON_COMMAND(ID_FILE_PRINT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, &CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, &CView::OnFilePrintPreview)

	ON_COMMAND_RANGE(ID_FREELINE, ID_ELLIPSE, OnChangeTool) // 활성화
	ON_UPDATE_COMMAND_UI_RANGE(ID_FREELINE, ID_ELLIPSE, OnUpdateChangeTool) // 툴바 메뉴 클릭했을 때 체크하는 기능
	ON_COMMAND(ID_LINECOLOR, &CMFCdrawing2View::OnLinecolor)
	ON_COMMAND(ID_FILLCOLOR, &CMFCdrawing2View::OnFillcolor)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
END_MESSAGE_MAP()

// CMFCdrawing2View 생성/소멸

CMFCdrawing2View::CMFCdrawing2View() noexcept
{
	// TODO: 여기에 생성 코드를 추가합니다.

}

CMFCdrawing2View::~CMFCdrawing2View()
{
}

BOOL CMFCdrawing2View::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: CREATESTRUCT cs를 수정하여 여기에서
	//  Window 클래스 또는 스타일을 수정합니다.

	return CView::PreCreateWindow(cs);
}

// CMFCdrawing2View 그리기

void CMFCdrawing2View::OnDraw(CDC* /*pDC*/)
{
	CMFCdrawing2Doc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	if (!pDoc)
		return;

	// TODO: 여기에 원시 데이터에 대한 그리기 코드를 추가합니다.
}


// CMFCdrawing2View 인쇄

BOOL CMFCdrawing2View::OnPreparePrinting(CPrintInfo* pInfo)
{
	// 기본적인 준비
	return DoPreparePrinting(pInfo);
}

void CMFCdrawing2View::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 인쇄하기 전에 추가 초기화 작업을 추가합니다.
}

void CMFCdrawing2View::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: 인쇄 후 정리 작업을 추가합니다.
}


// CMFCdrawing2View 진단

#ifdef _DEBUG
void CMFCdrawing2View::AssertValid() const
{
	CView::AssertValid();
}

void CMFCdrawing2View::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CMFCdrawing2Doc* CMFCdrawing2View::GetDocument() const // 디버그되지 않은 버전은 인라인으로 지정됩니다.
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CMFCdrawing2Doc)));
	return (CMFCdrawing2Doc*)m_pDocument;
}
#endif //_DEBUG


// CMFCdrawing2View 메시지 처리기

// 툴바 항목이 선택될 때 호출
// GetCurrentMessage()->wParam 구문은 클릭한 툴바항목의 아이디를 리턴
void CMFCdrawing2View::OnChangeTool(UINT wParam) {
    m_nType = GetCurrentMessage()->wParam;
}

// 현재 선택한 툴바항목과 일치여부에 따라 체크 표시
void CMFCdrawing2View::OnUpdateChangeTool(CCmdUI* pCmdUI) {
	pCmdUI->SetCheck(m_nType == (int)pCmdUI->m_nID);
}



void CMFCdrawing2View::OnLinecolor()
{
	CColorDialog dlg;
	if (dlg.DoModal() == IDOK) {
		m_colLine = dlg.GetColor();                                                                                    // 선택한 색을 COLORREF라는 구조체 형식으로 리턴
		m_colLineXor = (RGB(GetRValue(m_colLine) ^ 255, GetGValue(m_colLine) ^ 255, GetBValue(m_colLine) ^ 255));    // 고무줄 효과를 위해 Xor 연산 처리
	}
}


void CMFCdrawing2View::OnFillcolor()
{
	CColorDialog dlg;
	if (dlg.DoModal() == IDOK) {
		m_colFill = dlg.GetColor();
	}
}


void CMFCdrawing2View::OnLButtonDown(UINT nFlags, CPoint point)
{
	m_pntOld = point;
	m_pntCur = point;

	SetCapture();

	CView::OnLButtonDown(nFlags, point);
}


void CMFCdrawing2View::OnLButtonUp(UINT nFlags, CPoint point)
{
	ReleaseCapture();

	CClientDC dc(this);

	CBrush brush, * pOldBrush;
	if (m_nType == ID_RECTANGLE) {
		brush.CreateSolidBrush(m_colFill);

		pOldBrush = (CBrush*)dc.SelectObject(brush);

		dc.Rectangle(m_pntOld.x, m_pntOld.y, point.x, point.y);
	}
	else if (m_nType == ID_ELLIPSE) {
		brush.CreateSolidBrush(m_colFill);
		pOldBrush = (CBrush*)dc.SelectObject(brush);
		dc.Ellipse(m_pntOld.x, m_pntOld.y, point.x, point.y);
	}

	CView::OnLButtonUp(nFlags, point);
}


void CMFCdrawing2View::OnMouseMove(UINT nFlags, CPoint point)
{
    // 왼쪽 버튼을 누른 상태일 때
    if (nFlags & MK_LBUTTON) {
        CClientDC dc(this);

        // 펜과 브러쉬 속성을 변경
        CPen pen, * pOldPen;
        CBrush brush, * pOldBrush;

        // 자유곡선 그리기
        if (m_nType == ID_FREELINE) {
            // 선택한 선색으로 펜을 생성
            pen.CreatePen(PS_SOLID, 1, m_colLine);
            // 생성한 펜을 선택
            pOldPen = (CPen*)dc.SelectObject(&pen);

            // 직전 좌표에서 현재 좌표까지 선을 그림
            dc.MoveTo(m_pntOld.x, m_pntOld.y);
            dc.LineTo(point.x, point.y);

            // 현재 좌표를 저장
            m_pntOld = point;
            dc.SelectObject(pOldPen);
        }
        // 직선 그리기
        else if (m_nType == ID_LINE) {
            // Xor 된 색으로 펜 생성
            pen.CreatePen(PS_SOLID, 1, m_colLineXor);

            // NULL 브러쉬(투명 브러쉬) 선택
            dc.SelectObject(GetStockObject(NULL_BRUSH));

            // 그리기 모드를 XOR 모드로 변경
            dc.SetROP2(R2_XORPEN);

            // 선색으로 펜 생성
            pOldPen = (CPen*)dc.SelectObject(&pen);

            // 이전 그림 지우기
            dc.MoveTo(m_pntOld.x, m_pntOld.y);
            dc.LineTo(m_pntCur.x, m_pntCur.y);

            // 새 그림 그리기
            dc.MoveTo(m_pntOld.x, m_pntOld.y);
            dc.LineTo(point.x, point.y);

            dc.SelectObject(pOldPen);
        }
        // 사각형 그리기
        else if (m_nType == ID_RECTANGLE) {
            // Xor 된 색으로 펜 생성
            pen.CreatePen(PS_SOLID, 1, m_colLineXor);

            // NULL 브러쉬(투명 브러쉬) 선택
            dc.SelectObject(GetStockObject(NULL_BRUSH));

            // 그리기 모드를 XOR 모드로 변경
            dc.SetROP2(R2_XORPEN);

            // 선색으로 펜 생성
            pOldPen = (CPen*)dc.SelectObject(&pen);

            // 이전 그림 지우기
            dc.Rectangle(m_pntOld.x, m_pntOld.y, m_pntCur.x, m_pntCur.y);

            // 새 그림 그리기
            dc.Rectangle(m_pntOld.x, m_pntOld.y, point.x, point.y);

            dc.SelectObject(pOldPen);
        }
        // 원 그리기
        else if (m_nType == ID_ELLIPSE) {
            pen.CreatePen(PS_SOLID, 1, m_colLineXor);
            dc.SelectObject(GetStockObject(NULL_BRUSH));
            dc.SetROP2(R2_XORPEN);
            pOldPen = (CPen*)dc.SelectObject(&pen);

            dc.Ellipse(m_pntOld.x, m_pntOld.y, m_pntCur.x, m_pntCur.y);

            dc.Ellipse(m_pntOld.x, m_pntOld.y, point.x, point.y);

            dc.SelectObject(pOldPen);
        }
        m_pntCur = point;
    }

	CView::OnMouseMove(nFlags, point);
}
