class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        render json: Student.all.order(grade: :desc)
    end

    def highest_grade
        render json: Student.all.order(grade: :desc)[0]
    end

end
