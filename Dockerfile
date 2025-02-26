# ใช้ Ruby 2.6.6 image จาก Docker Hub
FROM ruby:2.6.6

# ตั้งค่าไดเรกทอรีทำงานในคอนเทนเนอร์
WORKDIR /usr/src/app

# คัดลอกไฟล์ทั้งหมดจากโฟลเดอร์โปรเจคไปยังคอนเทนเนอร์
COPY . .

# ติดตั้ง dependencies ที่จำเป็นสำหรับ Rails
RUN apt-get update -qq && apt-get install -y postgresql-client

# ติดตั้ง gems จาก Gemfile
RUN bundle install

# เปิดพอร์ตที่ Rails จะรัน
EXPOSE 3000

# สั่งให้ Rails รันเมื่อคอนเทนเนอร์เริ่มทำงาน
CMD ["rails", "server", "-b", "0.0.0.0"]
