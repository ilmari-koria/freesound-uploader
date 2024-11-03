module namespace page = 'http://basex.org/examples/web-page';
declare
  %rest:GET
  %rest:path('freesound/user-auth')
  %output:method('html')
function page:start() as element(html) {
  let $code-path := "../../secret/code"
  let $query := request:query()
    => substring-after("code=")
    => substring-before("&amp;state=xyz")
  return (
    <html>
      <body>
        <p>Freesound uploader user auth: Ok.</p>
      </body>
    </html>,
    file:write($code-path, $query))
};


