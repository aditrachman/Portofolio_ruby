require 'sinatra'
require 'erb'

# Konfigurasi Sinatra
set :port, 4567
set :bind, '0.0.0.0'

# Data portofolio (menggantikan database)
PROFILE_DATA = {
  name: "Aditrachman",
  title: "Data analayst & Web Developer",
  email: "aditrachman23@email.com",
  phone: "+62 000000000",
  location: "Magelang, Indonesia",
  bio: "Passionate developer dengan 3+ tahun pengalaman dalam pengembangan web. Suka menciptakan solusi yang elegant dan user-friendly.",
  skills: [
    { name: "Ruby", level: 90 },
    { name: "JavaScript", level: 85 },
    { name: "HTML/CSS", level: 95 },
    { name: "React", level: 80 },
    { name: "Node.js", level: 75 },
    { name: "PostgreSQL", level: 70 }
  ],
  projects: [
    {
      title: "E-Commerce Platform",
      description: "Platform e-commerce lengkap dengan sistem pembayaran dan manajemen inventory",
      tech: ["Ruby on Rails", "PostgreSQL", "Bootstrap"],
      github: "https://github.com/username/ecommerce",
      demo: "https://demo-ecommerce.com"
    },
    {
      title: "Task Management App",
      description: "Aplikasi manajemen tugas dengan fitur kolaborasi tim dan real-time updates",
      tech: ["React", "Node.js", "MongoDB"],
      github: "https://github.com/username/taskmanager",
      demo: "https://demo-taskmanager.com"
    },
    {
      title: "Weather Dashboard",
      description: "Dashboard cuaca dengan data real-time dan prediksi 7 hari ke depan",
      tech: ["Vue.js", "Express.js", "Weather API"],
      github: "https://github.com/username/weather",
      demo: "https://demo-weather.com"
    }
  ],
  experience: [
    {
      company: "Tech Solutions Inc.",
      position: "Senior Developer",
      period: "2022 - Sekarang",
      description: "Memimpin tim pengembangan untuk proyek-proyek enterprise scale"
    },
    {
      company: "Digital Agency",
      position: "Frontend Developer", 
      period: "2021 - 2022",
      description: "Mengembangkan website dan aplikasi web untuk berbagai klien"
    }
  ]
}

# Routes
get '/' do
  @profile = PROFILE_DATA
  erb :index
end

get '/about' do
  @profile = PROFILE_DATA
  erb :about
end

get '/projects' do
  @profile = PROFILE_DATA
  erb :projects
end

get '/contact' do
  @profile = PROFILE_DATA
  erb :contact
end

# API endpoint untuk mendapatkan data (opsional)
get '/api/profile' do
  content_type :json
  PROFILE_DATA.to_json
end