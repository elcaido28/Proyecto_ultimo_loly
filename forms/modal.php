<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Modal</title>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<style>


a{
	text-decoration: none;
	font-size:20px;
	display: inline-block;
	padding: 7px;
	width: 220px;
	border:1px solid #000;
	border-radius: 10px;
	color:#000;
}

.modal{
	display: none;
	position: fixed;
	z-index:1;
	overflow: auto;
	left: 0;
	top:0;
	width: 100%;
	height:100%;
	background: rgba(0, 0, 0, 0.452);
}

.contenido-modal{
	position: relative;
	background-color: #fefefe;
	margin: auto;
	width: 30%;
	box-shadow: 0 0 6px 0 rgba(0, 0, 0, .4);
	animation-name: modal;
	animation-duration: 1s;
}
@keyframes modal{
	from{top:-330px; opacity:0;}
	to{top:0; opacity:1;}
}
.close{
	color: #f2f2f2;
	font-size:30px;
	font-weight: bold;
}
.close:hover{
	color:#7f8c8d;
	text-decoration: none;
	cursor: pointer;
}



.modal-body{
	padding: 20px 16px;
}

@media screen and (max-width:900px){
	.contenido-modal{
		width: 70%;
	}

}

	</style>
</head>
<body>
<a href="#" id="abrir">Suscribete a este canal</a>
	<div id="miModal" class="modal">
		<div class="flex" id="flex">
			<div class="contenido-modal">
				<div class="modal-header flex">
					<span class="close" id="close">&times;</span>
				</div>
				<div class="modal-body">
					<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam voluptatum illum temporibus voluptas debitis! Et labore minus praesentium consequuntur mollitia dolores perferendis, voluptas nemo ratione consequatur illum quidem rerum, saepe eveniet ullam eaque quasi neque quo quisquam impedit ducimus voluptatem illo. Quod tenetur aliquam, soluta labore ipsam delectus. Id iusto distinctio minima quaerat nobis asperiores ullam, mollitia illo soluta quisquam natus dicta sint voluptates molestiae! Perferendis quos ea assumenda nulla?</p>			
				</div>
				
			</div>
		</div>
	</div>
	<script>
	    let modal = document.getElementById('miModal');
let flex = document.getElementById('flex');
let abrir = document.getElementById('abrir');
let cerrar = document.getElementById('close');

abrir.addEventListener('click', function(){
    modal.style.display = 'block';
});

cerrar.addEventListener('click', function(){
    modal.style.display = 'none';
});

window.addEventListener('click', function(e){
    console.log(e.target);
    if(e.target == flex){
        modal.style.display = 'none';
    }
});
	</script>
</body>
</html>