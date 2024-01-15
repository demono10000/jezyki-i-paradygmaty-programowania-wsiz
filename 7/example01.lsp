;;example 1 
;; Definicja klasy Osoba
(defclass person ()
  ((first-name :initarg :first-name :accessor person-first-name)
   (last-name :initarg :last-name :accessor person-last-name)
   (address :initarg :address :accessor person-address)))

;; Tworzenie instancji klasy Person
(defparameter *person*
  (make-instance 'person
                 :first-name "John"
                 :last-name "Doe"
                 :address "123 Main Street"))

;; Metoda wyświetlająca informacje o osobie
(defmethod display-person ((p person))
  (format t "Imię: ~A~%Nazwisko: ~A~%Adres: ~A~%"
          (person-first-name p)
          (person-last-name p)
          (person-address p)))

;; Wywołanie metody dla obiektu person
(display-person *person*)
