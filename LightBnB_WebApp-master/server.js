const path = require("path");
const express = require("express");
const cookieSession = require("cookie-session");
const { getUserWithEmail, getUserWithId, addUser } = require('./db/database.js');



const app = express();
const port = process.env.PORT || 3000;

// middleware
app.use(express.static(path.join(__dirname, "./public")));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(
  cookieSession({
    name: "session",
    keys: ["key1"],
  })
);

app.get('/api/users/email/:email', (req, res) => {
  const email = req.params.email;
  getUserWithEmail(email)
    .then(user => {
      if (!user) {
        return res.status(404).json({ error: 'User not found' });
      }
      res.json(user);
    })
    .catch(err => {
      console.error('Error fetching user:', err.message);
      res.status(500).json({ error: err.message });
    });
});


app.get('/api/users/id/:id', (req, res) => {
  const id = req.params.id;
  getUserWithId(id)
    .then(user => {
      if (!user) {
        return res.status(404).json({ error: 'User not found' });
      }
      res.json(user);
    })
    .catch(err => {
      console.error('Error fetching user:', err.message);
      res.status(500).json({ error: err.message });
    });
});

const apiRoutes = require("./routes/apiRoutes");
const userRoutes = require("./routes/userRoutes");

// /api/endpoints
app.use("/api", apiRoutes);

// /user/endpoints
app.use("/users", userRoutes);

app.get("/test", (req, res) => {
  res.send("🤗");
});

app.listen(port, (err) => {
  console.log(err || `listening on port ${port} 😎`);
});
