const db = require('../db/db');
const Resend = require ('resend');

const resend = new Resend.Resend(process.env.RESEND_KEY);

const createContact = async (req, res) => {
    const {nombre, apellido, email}=req.body;

    const { data, error } =await resend.emails.send({
        from: 'Viajefotografico<viajefotografico@resend.dev>',
        to: [email],
        subject: 'Contacto a Viajefotografico',
        text: 'Estimado '+[nombre]+',\n\nGracias por entrar en contacto con Viajes Fotograficos en 24 hs te contactara un asesor nuestro para brindarte mas información \n\nSaludos\n\nViajes Fotograficos',
        attachments: [
          
        ],
        headers: {
          'X-Entity-Ref-ID': '123456789',
        },
        tags: [
          {
            name: 'category',
            value: 'confirm_email',
          },
        ],
      });
      if (error) {
        return res.send({ error });
      }
      res.send(data); 
    
}
module.exports = { createContact};




