const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const request = require('request');

const app = express();
app.use(bodyParser.json());
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
  next();
});


const db = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'fortalecimiento'
});
 

db.connect((err) =>{
    if(err) {
        throw err;
    }
    console.log("MYSQL Connected");
})

app.get('/', (request, response) => {
    response.json({'It-is-works': 'yes'});
})

/*app.post("/tableLogin", (req, res) => {
    let sql = "CREATE TABLE login(id int AUTO_INCREMENT, usuario VARCHAR(100), contrasenia VARCHAR(100), PRIMARY KEY (id))";
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Table created...!')
    });
});*/

app.get("/countByMunicipioRubro/:municipio/:rubro", (req,res)=>{
	let sql = `SELECT COUNT(id) as count FROM inscripcion WHERE municipio = '${req.params.municipio}' AND actividadPrincipal = '${req.params.rubro}'`;
	let query = db.query(sql, (err, result) => {
		if(err){
			throw err;
		}
		res.send(result);
	})	
})

app.get("/searchByMunicipioRubro/:municipio/:rubro", (req,res)=>{
	let sql = `SELECT * FROM inscripcion WHERE municipio = '${req.params.municipio}' AND actividadPrincipal = '${req.params.rubro}'`;
	let query = db.query(sql, (err, result) => {
		if(err){
			throw err;
		}
		res.send(result);
	})	
})

app.get("/searchMunicipio/:municipio", (req,res)=>{
	let sql = `SELECT * FROM inscripcion WHERE municipio = '${req.params.municipio}'`;
	let query = db.query(sql, (err, result) => {
		if(err){
			throw err;
		}
		res.send(result);
	})	
})

app.get("/countMunicipio/:id", (req,res)=>{
	let sql = `SELECT COUNT(id) as count FROM inscripcion WHERE municipio = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
		if(err){
			throw err;
		}
		res.send(result);
	})	
})

app.get("/countRubros/:id", (req,res)=>{
	let sql = `SELECT COUNT(id) as count FROM inscripcion WHERE actividadPrincipal = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
		if(err){
			throw err;
		}
		res.send(result);
	})	
})

app.get("/regiterAccount/:id", (req, res) => {
	let sql = `SELECT * FROM login WHERE usuario = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
})

app.get("/allLogins", (req, res) => {
	let sql = 'SELECT * FROM login';
	let query = db.query(sql, (err, result) => {
			if(err) throw err;
			res.send(result);
	})	
})

/*app.post("/TableInscriocones", (req, res) => {
	console.log(req.body);
	
    let sql = "CREATE TABLE inscripcion(id int AUTO_INCREMENT, codigo VARCHAR(100), solicitante VARCHAR(100), ci VARCHAR(100), direccion VARCHAR(100), zona VARCHAR(500), municipio VARCHAR(100), celular int, telefono int, fax int, email VARCHAR(100), nombreEmpresa VARCHAR(100), direccionEmpresa VARCHAR(100), zonaEmpresa VARCHAR(100), municipioEmpresa VARCHAR(100), antiguedad int, mumOperadores int,  varones int, mujeres int, actividadPrincipal VARCHAR(100),  fechaInscripcion DATE, licenciaAlcaldia VARCHAR(100), senasag VARCHAR(100), afp VARCHAR(100), cajaSalud VARCHAR(100), nit VARCHAR(100), ninguno VARCHAR(100), fundaempresa VARCHAR(100), otros VARCHAR(100), aperturaMercado VARCHAR(100), apolloServFinanciero VARCHAR(100), capaciAsistenciaTecni VARCHAR(100), PRIMARY KEY (id))";
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Table created...!');
    });

});*/

app.post("/insertarInscripciones", (req, res) => {
	
	let post = {codigo:req.body.codigo,solicitante:req.body.solicitante,ci:req.body.ci,direccion:req.body.direccion,zona: req.body.zona,municipio:req.body.municipio,
		celular:req.body.celular,telefono:req.body.telefono,fax:req.body.fax,email:req.body.email,nombreEmpresa:req.body.nombreEmpresa,direccionEmpresa:req.body.direccionEmpresa,
		zonaEmpresa:req.body.zonaEmpresa,municipioEmpresa:req.body.municipioEmpresa,antiguedad:req.body.antiguedad,actividadPrincipal:req.body.actividadPrincipal,
		descripcionActividad:req.body.descripcionActividad,cantidadProducida:req.body.cantidadProducida,
		numOperadores:req.body.numOperarios,varones:req.body.varones,mujeres:req.body.mujeres,fechaInscripcion:req.body.fechaInscripcion,licenciaAlcaldia:req.body.licenciaAlcaldia,
		senasag:req.body.senasag,afp:req.body.afp,cajaSalud:req.body.cajaSalud,nit:req.body.nit,senapi:req.body.senapi,ninguno:req.body.ninguno,fundaempresa:req.body.fundaempresa,
		otros:req.body.otros,norma:req.body.norma,detalleNorma:req.body.detalleNorma,aperturaMercado:req.body.aperturaMercado,apolloServFinanciero:req.body.apolloServiciosFinancieron,
		capaciAsistenciaTecni:req.body.capacitacionAsistenciaTecnica
	}

	let sql = 'INSERT INTO inscripcion SET ?'
	let query = db.query(sql, post, (err, result) => {
		if(err){ 
			throw err;
		}	
		res.send(result);
	})
});

app.get("/searchByCode/:id", (req, res) => {
	let sql = `SELECT * FROM inscripcion WHERE codigo = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
});

app.get("/searchByCI/:id", (req, res) => {
	let sql = `SELECT * FROM inscripcion WHERE ci = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
});


app.get("/searchAllWood/:id", (req, res) => {
	let sql = `SELECT * FROM inscripcion WHERE actividadPrincipal = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
});

app.delete("/deleteItem/:id", (req, res) => {
	let sql = `DELETE FROM inscripcion WHERE id = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
});

app.get("/searchItem/:id", (req, res) => {
	let sql = `SELECT * FROM inscripcion WHERE id = '${req.params.id}'`;
	let query = db.query(sql, (err, result) => {
			if(err){
				throw err;
			}
			res.send(result);
	})	
});

app.listen('3000', () => {
    console.log('The server is running on port 3000');
});

