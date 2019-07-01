CXX		=	g++
NAME	=	app
FLAGS	=	-Wall -Wextra -Werror
RM		=	rm -f

SRC 	= 	main.cpp \
			calculator.cpp

OBJ		=	$(SRC:.cpp=.o)
HEADERS =	calculator.h

all: $(NAME)

$(NAME): $(OBJ)
	$(CXX) $(FLAGS) -o $(NAME) $(OBJ) -I $(HEADERS) 

main.o: main.cpp calculator.h

calculator.o: calculator.cpp calculator.h

clean:
	$(RM) $(OBJ)
