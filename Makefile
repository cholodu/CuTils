PREFIX ?= /usr

local:
	@printf "\033[0;32mconverting * to executables locally...\033[0m\n"
	@printf "\033[1;32m"
	chmod +x ./cext
	chmod +x ./cblh
	chmod +x ./cneth
	chmod +x ./csysi
	@printf "\033[0m"
all:
	@printf "\033[0;32mconverting * to executables locally...\033[0m\n"
	@printf "\033[1;32m"
	chmod +x ./cext
	chmod +x ./cblh
	chmod +x ./cneth
	chmod +x ./csysi
	@printf "\033[0;32minstalling cutils to ${PREFIX}...\033[0m\n"
	@printf "\033[1;32m"
	cp ./csysi $(PREFIX)/bin/.
	cp ./cblh $(PREFIX)/bin/.
	cp ./cneth $(PREFIX)/bin/.
	cp ./cext $(PREFIX)/bin/.
	@printf "\033[0;32mcreating executables...\033[0m\n"
	@printf "\033[1;32m"
	chmod +x $(PREFIX)/bin/csysi
	chmod +x $(PREFIX)/bin/cblh
	chmod +x $(PREFIX)/bin/cneth
	chmod +x $(PREFIX)/bin/cext
	@printf "\033[0m"
install:
	@printf "\033[0;32minstalling cutils to ${PREFIX}...\033[0m\n"
	@printf "\033[1;32m"
	cp ./csysi $(PREFIX)/bin/.
	cp ./cblh $(PREFIX)/bin/.
	cp ./cneth $(PREFIX)/bin/.
	cp ./cext $(PREFIX)/bin/.
	@printf "\033[0;32mcreating executables...\033[0m\n"
	@printf "\033[1;32m"
	chmod +x $(PREFIX)/bin/csysi
	chmod +x $(PREFIX)/bin/cblh
	chmod +x $(PREFIX)/bin/cneth
	chmod +x $(PREFIX)/bin/cext
	@printf "\033[0m"
uninstall:
	@printf "\033[0;31muninstalling cutils from ${PREFIX}...\033[0m\n"
	@printf "\033[1;31m"
	rm -f $(PREFIX)/bin/csysi
	rm -f $(PREFIX)/bin/cblh
	rm -f $(PREFIX)/bin/cneth
	rm -f $(PREFIX)/bin/cext
	@printf "\033[0m"
