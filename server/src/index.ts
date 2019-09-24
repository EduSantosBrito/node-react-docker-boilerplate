import bodyParser from 'body-parser';
import cors from 'cors';
import express from 'express';
import mongoose from 'mongoose';

const {
    MONGODB_DATABASE,
    MONGODB_HOST,
    MONGODB_PORT,
} = process.env;

const app = express();

app.use(cors());
app.use(bodyParser.json());

const mongoURI = `mongodb://${MONGODB_HOST}:${MONGODB_PORT}/${MONGODB_DATABASE}`;
mongoose.connect(mongoURI, { useNewUrlParser: true });

app.get('/', (req, res) => res.send('Hello World'))

app.listen(process.env.NODE_PORT || 3000);