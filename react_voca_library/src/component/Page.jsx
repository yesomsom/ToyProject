import styled from "styled-components";

export default function Page({ total, limit, page, setPage}) {
  const numPages = Math.ceil(total/limit);

  return (
    <>
      <Wrap>
        <Button onClick={() => setPage(page - 1)} disabled={page === 1}>
          &lt;
        </Button>

        {Array(numPages)
          .fill()
          .map((_, i) => (
            <Button
              key={i + 1}
              onClick={() => setPage(i + 1)}
              aria-current={page === i + 1 ? "page" : null}
            >
              {i + 1}
            </Button>
          ))}

        <Button onClick={() => setPage(page + 1)} disabled={page === numPages}>
          &gt;
        </Button>
      </Wrap>
    </>
  );
}

const Wrap = styled.nav`
  display: flex;
  gap: 8px;
`;

const Button = styled.button`
  border: none;
  border-radius: 20px;
  padding: 8px;
  background: #eee;
  color: black;
  font-size: 12px;

  &:hover {
    background: #c31e1efa;
    cursor: pointer;
    transform: translateY(-2px);
  }

  &[disabled] {
    background: #aaa;
    cursor: revert;
    transform: revert;
  }

  &[aria-current] {
    background: rgb(255 234 63 / 54%);
    font-weight: bold;
    cursor: revert;
    transform: revert;
  }
`;