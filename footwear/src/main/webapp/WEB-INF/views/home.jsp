<!DOCTYPE html>
<html lang="en">
<head>
  <title>ONLINE SHOES</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="./resource/css/smallimag.css">
  
  
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="./resource/js/carousel.js"></script>
<!------ Include the above in your HEAD tag ---------->
  <link rel="stylesheet" href="./resource/css/carousel.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
  
    <link href="https://fonts.googleapis.com/css?family=Sansita" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <style>
    body{background-color:lightgray;}
    </style>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container-fluid main-container">
  
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="./resource/image/shoe1.jpg" alt="Sports Wear" >
      </div>

      <div class="item">
        <img src="./resource/image/shoe2.jpg" alt="PUMA" >
      </div>
    
      <div class="item">
        <img src="./resource/image/shoe3.jpg" alt="ADDIAS" >
      </div>
      
      <div class="item">
        <img src="./resource/image/shoe4.jpg" alt="FORMALS" >
      </div>
      
      <div class="item">
        <img src="./resource/image/shoe5.jpg" alt="LEATHER" >
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br> <br> 
<br>


<div class="container">
	<div class="row">
		<div class="row">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src= "https://assets.jassets.com/w_248,h_338,q_80/assets/images/productImage/2018/5/2/11525267847413-1.jpg"
    
                         alt="Another alt text"><h4>Formals</h4><p>Geniune Leathers</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/158971/pexels-photo-158971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="data:image/jpeg;base64,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"
                    
                         alt="Another alt text"><h4>Nike</h4><p>Rs.800-1200</p>
                </a>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="https://images.pexels.com/photos/305070/pexels-photo-305070.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://s7d4.scene7.com/is/image/JCPenney/DP1114201620333084C.tif?wid=350&hei=350&op_usm=.4,.8,0,0&resmode=sharp2"
                         alt="Another alt text"><h4>Addidas</h4><p>Rs.1200-2400</p>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Test1"
                   data-image="https://images.pexels.com/photos/853168/pexels-photo-853168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="https://assets.adidas.com/images/w_600,f_auto,q_auto/bd870e284b1e437985b7a8ff00f58854_9366/POD-S3_1_Shoes_Orange_B37364_01_standard.jpg"
                         alt="Another alt text"><h4>Other Collections</h4><p>Special offers</p>
                </a>
            </div>
             
           
          
             
        </div>


        <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary float-left" id="show-previous-image"><i class="fa fa-arrow-left"></i>
                        </button>

                        <button type="button" id="show-next-image" class="btn btn-secondary float-right"><i class="fa fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

<div class="container-fluid page-builder-ltr">
<div class="row row_tvsw row-style row-color">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col_adt9 col-style">
<div class="videos-grids"><div class="module">
<h3 class="modtitle"><span>Videos</span></h3>
</div>
<div class="services-inline">
<div class="row">
<div class="policy1 col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="inner">
<iframe width="425" height="240" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/BBToKRtZB4g"></iframe>
</div>
</div>
<div class="policy2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
<div class="inner">
<iframe width="425" height="240" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/ndLsEuODaY4"></iframe>
</div>
</div>
<div class="policy3 col-lg-4 col-md-4 col-sm-12 col-xs-12">
<div class="inner">
<iframe width="425" height="240" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/ZI1DyVvsf5A"></iframe>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<%@include file="footer.jsp"%>
</body>
</html>
