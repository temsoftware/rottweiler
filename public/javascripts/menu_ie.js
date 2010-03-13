
    //Script para funcionar sub-menu de Produtos no IE
    startList = function()
    {
      if (document.all&&document.getElementById)
      {
        navRoot = document.getElementById("menu_esquerda_img_produto");

        navRoot.onmouseover=function()
        {
           this.className="menu_img over";//this.style.display = "block"; //className+=" over";
        }

        navRoot.onmouseout=function()
        {
          this.className="menu_img unover";
        }

        }
      }
    window.onload=startList;

