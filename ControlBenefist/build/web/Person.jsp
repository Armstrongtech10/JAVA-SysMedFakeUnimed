<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

        
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="aui ltr" dir="ltr" lang="pt-BR">
 <head> 
  <!-- Google Tag Manager --> 
 
  <!-- End Google Tag Manager --> 
  <title>Administrador</title> 
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link href="https://www.unimed.coop.br/institucional-theme/images/favicon.ico" rel="Shortcut Icon"> 
  <link href="https://www.unimed.coop.br/login" rel="canonical"> 
  <link rel=stylesheet href='https://cdn.jsdelivr.net/npm/icomoon@1.0.0/style.css'>
  <link class="lfr-css-file" href="https://www.unimed.coop.br/institucional-theme/css/aui.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1534965106000" rel="stylesheet" type="text/css"> 
  <link href="https://www.unimed.coop.br/html/css/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1496424320000" rel="stylesheet" type="text/css"> 
  <link href="https://www.unimed.coop.br/login-pctr-portlet/css/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1537800721000" rel="stylesheet" type="text/css"> 
  <link href="https://www.unimed.coop.br/html/portlet/search/css/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1537800777000" rel="stylesheet" type="text/css"> 
  <link href="https://www.unimed.coop.br/chamadas-portlet/dist/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1537800721000" rel="stylesheet" type="text/css"> 
  <link href="https://www.unimed.coop.br/busca-site-padrao-portlet/css/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1537800721000" rel="stylesheet" type="text/css"> 
  
  <script src="https://www.unimed.coop.br/html/js/barebone.jsp?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;colorSchemeId=institucional&amp;minifierType=js&amp;minifierBundleId=javascript.barebone.files&amp;languageId=pt_BR&amp;b=6204&amp;t=1537800747000" type="text/javascript"></script> 
  
  
  <link class="lfr-css-file" href="https://www.unimed.coop.br/institucional-theme/css/main.css?browserId=other&amp;themeId=institucionaltheme_WAR_institucionaltheme&amp;minifierType=css&amp;languageId=pt_BR&amp;b=6204&amp;t=1534965106000" rel="stylesheet" type="text/css"> 
  
  <meta content="initial-scale=1.0, width=device-width" name="viewport"> 
  <link rel="apple-touch-icon" sizes="57x57" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-57x57.png"> 
  <link rel="apple-touch-icon" sizes="60x60" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-60x60.png"> 
  <link rel="apple-touch-icon" sizes="72x72" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-72x72.png"> 
  <link rel="apple-touch-icon" sizes="76x76" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-76x76.png"> 
  <link rel="apple-touch-icon" sizes="114x114" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-114x114.png"> 
  <link rel="apple-touch-icon" sizes="120x120" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-120x120.png"> 
  <link rel="apple-touch-icon" sizes="144x144" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-144x144.png"> 
  <link rel="apple-touch-icon" sizes="152x152" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-152x152.png"> 
  <link rel="apple-touch-icon" sizes="180x180" href="https://www.unimed.coop.br/institucional-theme/images/favicon/apple-icon-180x180.png"> 
  <link rel="icon" type="image/png" sizes="192x192" href="https://www.unimed.coop.br/institucional-theme/images/favicon/android-icon-192x192.png"> 
  <link rel="icon" type="image/png" sizes="32x32" href="https://www.unimed.coop.br/institucional-theme/images/favicon/favicon-32x32.png"> 
  <link rel="icon" type="image/png" sizes="96x96" href="https://www.unimed.coop.br/institucional-theme/images/favicon/favicon-96x96.png"> 
  <link rel="icon" type="image/png" sizes="16x16" href="https://www.unimed.coop.br/institucional-theme/images/favicon/favicon-16x16.png"> 
  <link rel="manifest" href="https://www.unimed.coop.br/institucional-theme/images/favicon/manifest.json"> 
  <meta name="msapplication-TileColor" content="#00995d"> 
  <meta name="msapplication-TileImage" content="https://www.unimed.coop.br/institucional-theme/images/favicon/ms-icon-144x144.png"> 
  <meta name="theme-color" content="#00995d"> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/angular.min.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/angular-route.min.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/angular-portlet.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/jquery-2.2.4.min.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/jquery.barrating.min.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/jquery.mask.min.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/libs/fb-sdk.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/plugins/busca.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/plugins/menu-principal.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/plugins/menu-interno.js" type="text/javascript"></script> 
  <script src="https://www.unimed.coop.br/institucional-theme/js/plugins/menu-acesso-rapido.js" type="text/javascript"></script> 
  
  <script>
    var facebookAppId = '198228867329756';
</script> 
  <link rel="stylesheet" href="https://www.unimed.coop.br/institucional-theme/css/borderless-bar.css" type="text/css"> 
 </head> 
 <body class="institucional yui3-skin-sam controls-visible guest-site signed-out public-page site"> 
  <!-- Google Tag Manager (noscript) --> 
  <noscript>
   <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N8HNBSS" height="0" width="0" style="display:none;visibility:hidden"></iframe>
  </noscript> 
  <!-- End Google Tag Manager (noscript) --> 
  <script src="https://api.handtalk.me/plugin/latest/handtalk.min.js"></script> 
  <script>var ht = new HT({ token: "1f1ce3155ad8840b8a23e9b47402d17d" });</script> 
  <div class="container-externo $class_hotsite"> 
   <header class="relative"> 
    <nav id="menuPrincipal" class="menu-principal clearfix"> 
     <div class="container-interno relative"> 
      <h1 class="logo custom-logo no-margin"> <a href="https://www.unimed.coop.br/login?p_p_auth=rfwuBYBe&amp;p_p_id=49&amp;p_p_lifecycle=1&amp;p_p_state=normal&amp;p_p_mode=view&amp;_49_struts_action=%2Fmy_sites%2Fview&amp;_49_groupId=20182&amp;_49_privateLayout=false" title="Ir para a pÃ¡gina inicial"> <img alt="Institucional" height="59" src="https://www.unimed.coop.br/image/layout_set_logo?img_id=2290035&t=1537801524528" width="164"> </a> </h1> 
      <div class="visivel-responsivo pull-right"> 
       <button id="btnMenuResponsivo" class="btn-menu-responsivo icomoon-menu-barra"></button> 
      </div> 
      <div id="menuPrincipalItens" class="menu-principal-itens"> 
       <div class="visivel-responsivo margin-top-2x"> 
        <div class="campo-pesquisa-menu-responsivo transparent-field"> 
         <form id="fmBuscaPrincipal" action="/web/guest/login" method="get" name="fmBuscaPrincipal"> 
          <input name="p_p_id" type="hidden" value="buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA"> 
          <input name="p_p_lifecycle" type="hidden" value="0"> 
          <input name="p_p_state" type="hidden" value="maximized"> 
          <input name="p_p_mode" type="hidden" value="view"> 
          <input type="search" class="input-busca oculto" name="q" id="campo-input-mobile" value=""> 
          <button class="btn-search icomoon-lupa padding-bottom" id="lupa-busca-responsivo"></button> 
         </form> 
        </div> 
        <div class="portlet-boundary portlet-boundary_buscasitepadraoportlet_WAR_buscasitepadraoportlet_  portlet-static portlet-static-end portlet-borderless  " id="p_p_id_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA_"> 
         <span id="p_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA"></span> 
         <div class="portlet-borderless-container" style=""> 
          <div class="portlet-body"> 
           <div class="span12 result" id="_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA_"> 
           </div> 
          </div> 
         </div> 
        </div> 
       </div> 
       <ul> 
        <li class="link_to_layout"> <a href="success.html"> Home</a></li> 
        <li class="portlet"> <a href="lista.jsp"> Lista de Beneficiários </a> </li> 
        <!--<li class="portlet"> <a href="https://www.unimed.coop.br/viver-bem"> Viver Bem </a> </li> 
        <li class="portlet"> <a href="https://www.unimed.coop.br/home/fale-com-a-unimed"> Fale com a Unimed </a> </li> 
        <li class="portlet"> <a href="https://www.unimed.coop.br/nossos-planos"> Nossos planos </a> </li> 
        <li class="portlet"> <a href="https://www.unimed.coop.br/home/imprensa"> Imprensa </a> </li>--> 
       </ul> 
       <a href="logout.jsp"  class="btn-fazer-login"> <i class="icomoon-usuario"></i> Sair </a> 
      </div> 
     </div> 
    </nav> 
    <div class="busca-form   visivel-desktop"> 
     <div class="container-interno relative"> 
      <ol class="breadcrumb" role="navigation" aria-labelledby="Navegação secundÃ¡ria"> 
       <!-- Nivel 0 - home --> 
       <!-- isSelected --> 
       <!-- isSelected --> 
       <!-- isSelected --> 
       <!-- foreach --> 
      </ol> 
      <!-- nav_items.size --> 
      <div class="input-collapse"> 
       <form action="/web/guest/login" method="get" id="fmBuscaPrincipal" name="fmBuscaPrincipal"> 
        <input name="p_p_id" type="hidden" value="buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA"> 
        <input name="p_p_lifecycle" type="hidden" value="0"> 
        <input name="p_p_state" type="hidden" value="maximized"> 
        <input name="p_p_mode" type="hidden" value="view"> 
        <input type="search" class="input-busca oculto" name="q" id="txtTermo" value=""> 
        <button id="btnPesquisar" class="btn-search icomoon-lupa"></button> 
        <a href="#" class="btn-search icomoon-lupa input-collapse-button"></a> 
       </form> 
       <div class="portlet-boundary portlet-boundary_buscasitepadraoportlet_WAR_buscasitepadraoportlet_  portlet-static portlet-static-end portlet-borderless  " id="p_p_id_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA_"> 
        <span id="p_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA"></span> 
        <div class="portlet-borderless-container" style=""> 
         <div class="portlet-body"> 
          <div class="span12 result" id="_buscasitepadraoportlet_WAR_buscasitepadraoportlet_INSTANCE_6U5CA_"> 
          </div> 
         </div> 
        </div> 
       </div> 
      </div> 
     </div> 
    </div> 
   </header> 
   <div class="container-principal"> 
    <div class="chamadas-tema"> 
     <div class="portlet-boundary portlet-boundary_chamadasportlet_WAR_chamadasportlet_  portlet-static portlet-static-end portlet-borderless  " id="p_p_id_chamadasportlet_WAR_chamadasportlet_INSTANCE_ipfNmicMes4C_"> 
      <span id="p_chamadasportlet_WAR_chamadasportlet_INSTANCE_ipfNmicMes4C"></span> 
      <div class="portlet-borderless-container" style=""> 
       <div class="portlet-body"> 
        <script>window.jQuery || document.write('<script src="/chamadas-portlet/lib/jquery-2.2.4.min.js"<\/script>')</script> 
        <div id="_chamadasportlet_WAR_chamadasportlet_INSTANCE_ipfNmicMes4C_div-conteudo-chamada"> 
         <script>
        function detectar_mobile() {
          var check = false; //wrapper no check
          (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4)))check = true})(navigator.userAgent||navigator.vendor||window.opera);
          return check;
        };
    </script> 
         <style>
        #modelo01-efzr_ .slideme-control-nav-back,
        #modelo01-efzr_ .slideme-control-nav-next {
            opacity: 0;
            transition: opacity 800ms;
        }
        #modelo01-efzr_:hover .slideme-control-nav-back,
        #modelo01-efzr_:hover .slideme-control-nav-next
        {
            opacity: 1.0;
        }
    </style> 
    <br><br><br>
    <body>
        <div class="container">
            <center><form method="POST" action='PersonController' name="frmAddPerson" role="form">
                 
                
                <div class="form-group">
                    <label for="personid"> Código:</label>
                        <input class="form-control" type="number" id="personId" name="personId" readonly value=<c:out value="${person.personId}" /> />
                    
                </div>
                <div class="form-group">
                    <label for="name"> Nome:  </label>
                        <input class="form-control" type="text" id="name" name="name" value="<c:out value="${person.name}" />" />
                    
                </div>
                <div class="form-group">
                    <label for="phone">Telefone:  </label>
                        <input class="form-control" type="text" name="phone" value="<c:out value="${person.phone}" />" /> 
                   
                </div>
                <div class="form-group">
                    <label for="profession">Profissão:</label>
                         <input class="form-control" type="text" name="profession" value="<c:out value="${person.profession}" />" />
                    
                </div>
                <div>
                <input type="submit" value="Cadastrar" class="btn btn-info" />&nbsp;&nbsp;&nbsp;<input href="lista.jsp"  type="submit" value="Voltar" class="btn btn-default" />
                </div>
                
            </form></center>
        </div>
<br><br><br>

<!-- footer --> 
  <footer> 
     <nav id="menuAcessoRapido" class="menu-acesso-rapido clearfix"> 
      <div class="container-interno row-fluid"> 
       <ul class="span2 agregador"> 
        <li class=""> <a  class="tb6 cor-secundaria"> A Unimed </a> <button class="btn-collapse-menu icomoon-base"></button> 
         <ul class="agregador-submenu"> 
          <li> <a href=" " class="agregador-submenu-item"> Unimed do Brasil </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Cooperativismo </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Fale com a Unimed </a> </li> 
          <li> <a href=" " target="_blank" class="agregador-submenu-item"> Trabalhe conosco </a> </li> 
          <!-- end foreach --> 
         </ul> 
         <!-- end if --> </li> 
       </ul> 
       <ul class="span2 agregador"> 
        <li class=""> <span class="tb6 cor-secundaria"> Serviços </span> <button class="btn-collapse-menu icomoon-base"></button> 
         <ul class="agregador-submenu"> 
          <li> <a href=" " class="agregador-submenu-item"> Imposto de Renda </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Nossos planos </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Segunda via de boletos </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Unimed mais próxima </a> </li> 
          <!-- end foreach --> 
         </ul> 
         <!-- end if --> </li> 
       </ul> 
       <ul class="span2 agregador"> 
        <li class=""> <a href=" " class="tb6 cor-secundaria"> Sustentabilidade </a> <button class="btn-collapse-menu icomoon-base"></button> 
         <ul class="agregador-submenu"> 
          <li> <a href=" " class="agregador-submenu-item"> Política Nacional </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Compromissos </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Instituto Nacional </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Relatórios </a> </li> 
          <!-- end foreach --> 
         </ul> 
         <!-- end if --> </li> 
       </ul> 
       <ul class="span2 agregador"> 
        <li class=""> <a href=" " class="tb6 cor-secundaria"> Viver Bem </a> <button class="btn-collapse-menu icomoon-base"></button> 
         <ul class="agregador-submenu"> 
          <li> <a href=" " class="agregador-submenu-item"> Cartilhas de Saúde </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Pais e Filhos </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Viver Bem em Série </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Enfermidades </a> </li> 
          <!-- end foreach --> 
         </ul> 
         <!-- end if --> </li> 
       </ul> 
       <ul class="span2 agregador"> 
        <li class=""> <a href=" " class="tb6 cor-secundaria"> Imprensa </a> <button class="btn-collapse-menu icomoon-base"></button> 
         <ul class="agregador-submenu"> 
          <li> <a href=" " class="agregador-submenu-item"> Notícias </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Revista Unimed BR </a> </li> 
          <li> <a href=" " class="agregador-submenu-item"> Patrocínio </a> </li> 
          <!-- end foreach --> 
         </ul> 
         <!-- end if --> </li> 
       </ul> 
       <!-- end foreach --> 
      </div> 
     </nav> 
     <!-- end if --> 
     <div class="menu-social container-interno clearfix padding-left-2x padding-right-2x text-center"> 
      
      <nav class="nav-social margin-bottom-2x"> 
       <h4 class="cor-verde-medio margin-bottom-2x fonte-padrao">Redes Sociais</h4> 
       <a href="https://www.facebook.com/unimedbr" target="_blank" class="icones-facebook" title="Facebook"></a> 
       <a href="https://www.instagram.com/unimedbr" target="_blank" class="icones-instagram" title="Instagram"></a> 
       <a href="https://www.linkedin.com/company/unimed-com-br" target="_blank" class="icones-linkedin" title="Linkedin"></a> 
       <a href="https://www.youtube.com/user/canalunimed" target="_blank" class="icones-youtube" title="Youtube"></a>
      </nav> 
     
     </div> 
     <nav id="menuPoliticas" class="menu-politicas container-interno"> 
      <ul class="centralizar"> 
       <li> <a href=" "> Termo de uso <i class="icomoon-chevron-direita"></i> </a> </li> 
       <li> <a href=" "> Política Editorial <i class="icomoon-chevron-direita"></i> </a> </li> 
       <li> <a href=" "> Unimed mais próxima <i class="icomoon-chevron-direita"></i> </a> </li> 
       <li> <a href=" "> Mapa do site <i class="icomoon-chevron-direita"></i> </a> </li> 
       <li> <a href=" "> Política de Privacidade <i class="icomoon-chevron-direita"></i> </a> </li> 
       <li> <a href=""> Portal Unimed <i class="icomoon-chevron-direita"></i> </a> </li> 
      </ul> 
     </nav> 
    </footer> 


        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    </body>
</html>