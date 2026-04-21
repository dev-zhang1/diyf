CREATE DATABASE IF NOT EXISTS dify_test DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE dify_test;

DROP TABLE IF EXISTS student_grades;
CREATE TABLE student_grades (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT '自增ID',
    student_id VARCHAR(20) NOT NULL COMMENT '学号',
    student_name VARCHAR(50) NOT NULL COMMENT '学生姓名',
    class_name VARCHAR(50) COMMENT '班级',
    subject VARCHAR(50) NOT NULL COMMENT '科目',
    score DECIMAL(5,2) NOT NULL COMMENT '分数',
    exam_date DATE COMMENT '考试日期',
    semester VARCHAR(50) COMMENT '学期',
    grade CHAR(10) COMMENT '等级',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生成绩表';

INSERT INTO student_grades 
(student_id, student_name, class_name, subject, score, exam_date, semester, grade, created_at, updated_at) 
VALUES
('2023001', '张宇轩', '高一(1)班', '数学', 85.00, '2023-09-15', '2023-2024学年第一学期', 'A', NOW(), NOW()),
('2023002', '李雨桐', '高一(1)班', '数学', 92.50, '2023-09-15', '2023-2024学年第一学期', 'A', NOW(), NOW()),
('2023003', '王浩然', '高一(2)班', '英语', 78.00, '2023-09-15', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023004', '刘思涵', '高一(1)班', '语文', 88.50, '2023-09-16', '2023-2024学年第一学期', 'A', NOW(), NOW()),
('2023005', '陈俊宇', '高一(2)班', '数学', 59.00, '2023-09-15', '2023-2024学年第一学期', 'D', NOW(), NOW()),
('2023006', '杨欣怡', '高一(1)班', '英语', 95.00, '2023-09-15', '2023-2024学年第一学期', 'A+', NOW(), NOW()),
('2023007', '周子轩', '高一(3)班', '物理', 72.00, '2023-09-17', '2023-2024学年第一学期', 'C', NOW(), NOW()),
('2023008', '吴雨泽', '高一(2)班', '化学', 81.00, '2023-09-17', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023009', '郑雨欣', '高一(3)班', '数学', 65.50, '2023-09-15', '2023-2024学年第一学期', 'C', NOW(), NOW()),
('2023010', '何宇辰', '高一(1)班', '物理', 90.00, '2023-09-17', '2023-2024学年第一学期', 'A', NOW(), NOW()),
('2023011', '林佳怡', '高一(2)班', '语文', 76.00, '2023-09-16', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023012', '黄浩宇', '高一(3)班', '英语', 83.00, '2023-09-15', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023013', '徐诗涵', '高一(1)班', '化学', 68.50, '2023-09-17', '2023-2024学年第一学期', 'C', NOW(), NOW()),
('2023014', '朱俊豪', '高一(2)班', '物理', 97.00, '2023-09-17', '2023-2024学年第一学期', 'A+', NOW(), NOW()),
('2023015', '高雨萱', '高一(3)班', '语文', 80.00, '2023-09-16', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023016', '马宇轩', '高一(1)班', '生物', 75.00, '2023-09-18', '2023-2024学年第一学期', 'B', NOW(), NOW()),
('2023017', '胡欣悦', '高一(2)班', '生物', 89.50, '2023-09-18', '2023-2024学年第一学期', 'A', NOW(), NOW()),
('2023018', '郭泽宇', '高一(3)班', '化学', 55.00, '2023-09-17', '2023-2024学年第一学期', 'D', NOW(), NOW()),
('2023019', '罗思琪', '高一(1)班', '数学', 70.00, '2023-09-15', '2023-2024学年第一学期', 'C', NOW(), NOW()),
('2023020', '梁俊熙', '高一(2)班', '英语', 91.00, '2023-09-15', '2023-2024学年第一学期', 'A', NOW(), NOW());

SELECT * FROM student_grades;
