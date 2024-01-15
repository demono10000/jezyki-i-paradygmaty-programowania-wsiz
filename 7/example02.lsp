;;example 2
;; Definicja klasy Person
(defclass person ()
  ((first-name :initarg :first-name :accessor person-first-name)
   (last-name :initarg :last-name :accessor person-last-name)
   (address :initarg :address :accessor person-address)))

;; Definicja klasy Student dziedziczącej po klasie Person
(defclass student (person)
  ((student-id :initarg :student-id :accessor student-id)
   (study-program :initarg :study-program :accessor study-program)))

;; Metoda wyświetlająca informacje o studencie
(defmethod display-student ((s student))
  (format t "Imię: ~A~%Nazwisko: ~A~%Adres: ~A~%Numer albumu: ~A~%Kierunek studiów: ~A~%"
          (person-first-name s)
          (person-last-name s)
          (person-address s)
          (student-id s)
          (study-program s)))

;; Tworzenie instancji klasy Student
(defparameter *student*
  (make-instance 'student
                 :first-name "John"
                 :last-name "Doe"
                 :address "123 Main Street"
                 :student-id "123456"
                 :study-program "Computer Science"))

;; Wywołanie metody dla obiektu student
(display-student *student*)
