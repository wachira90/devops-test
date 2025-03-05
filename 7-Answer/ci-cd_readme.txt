# GITLAB 

# CI/CD จะใช้ gitlab-runner ทำ CI/CD โดยจะทำแบบ Semi Auto เพื่อป้องกันการลั่น
# หากเป็นการใช้งานใน Production (รูปแบบ trigger ทั่วไปจะใช้แบบ merg branch )
# ทางผมจะเลือกแบบ file change "version.txt" โดยเนื้อหาภายในจะเป็น "prod1" , "prod2" ...

หลักการทำงาน 
1. จับไฟล์ "version.txt" Change ใน branch main และ อ่านค่ามาใส่ใน tag version build 
2. pull code โดยเก็บ หลักฐาน sha hash วันที่ต่างๆ เพื่อตรวจสอบย้อนหลัง
    - git pull --no-edit
    - git status
    - git show -s 
3. build image 
4. re login repo
5. push image 
6. การ set image tag ใน Kube เพื่อให้ GKE เปลี่ยนแปลง


