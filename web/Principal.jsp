<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Principal</title>
    <link  href="CSS/estilo.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/1a36f2803d.js" crossorigin="anonymous"></script>
  </head>
  <body>
      
      
      
   <header>
<div class="navegacion">
<nav>
<ul>
   <form action="Validar" method="POST">
       <button name="accion" value="salir" class="fa-solid fa-circle-xmark" style="background-color:transparent; border: none; color: white" href="#">Salir</button>
   
    <button name="accion" value="nuevo" class="fa-solid fa-plus" style="background-color:transparent; border: none; color: white; margin-left:10px  " href="#">Nuevo</button>
   </form>
   
</ul>
</nav>
</div>

<div class="usuario">
    <i class="fa-regular fa-circle-user"></i><a href="#">Monica,admin</a>
</div>
</header>
<div class="menu_side">
<div class="name_page">
    <img src="Img/logogava.png" alt=""/>
</div>
</div>


<div class="option_menu">

    <a href="Controlador?menu=registrardocu" target="myframe">
        <div class="option">
        <i class="fa-solid fa-square-pen"></i>
        <span class="links_name">Registrar documentos</span>
        </div>
    </a>

    <a href="Controlador?menu=solicitudes" target="myframe">
        <div class="option">
        <i class="fa-regular fa-hand-point-right"></i>
        <span class="links_name">Solicitudes</span>
        </div>
    </a>

    <a href="Controlador?menu=reportes" target="myframe">
        <div class="option">
        <i class="fa-solid fa-square-minus"></i>
        <span class="links_name">Reportes</span>
        </div>
    </a>


    <a href="Controlador?menu=usuarios" target="myframe">
        <div class="option">
        <i class="fa-solid fa-user"></i>
        <span class="links_name">Usuarios</span>
       </div>
    </a>

    <a href="Controlador?menu=terceros&accion=Listar" target="myframe">
        <div class="option">
        <i class="fa-solid fa-address-book"></i>
        <span class="links_name">Terceros</span>
        </div>
    </a>

    <a href="Controlador?menu=configuracion" target="myframe">
        <div class="option">
        <i class="fa-solid fa-sliders"></i>
        <span class="links_name">Configuración</span>
        </div>
    </a>
    
    </div>
    
      <div class="m-2" style="height:850px;" >
          <iframe name="myframe" style="height: 90%; width: 70%; margin-left: 450px; margin-top: 100px; border: none"></iframe>
      </div>

  </body>
</html>