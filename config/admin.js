module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '3ac50472286e07a92c5d0bcf61d8524d'),
  },
});
