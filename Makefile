SOURCE=$(wildcard *.tex)
INCLUDE=$(wildcard chapter/*.tex)
TARGET=$(patsubst %.tex,%.pdf,$(SOURCE))
BBL=$(patsubst %.tex,%.bbl,$(SOURCE))
AUX=$(patsubst %.tex,%.aux,$(SOURCE))

all: $(TARGET)

$(TARGET) : $(SOURCE) $(INCLUDE)
	xelatex $<

ref: $(SOURCE) $(BBL) $(INCLUDE)
	xelatex $<
	xelatex $<

$(BBL) : $(AUX)
	bibtex $<

$(AUX) : $(SOURCE)
	xelatex $<

clean:
	rm -f *.aux chapter/*.aux *.log *.blg *.pdf *.toc *.out
#这里我们还是不要删除bbl文件了，因为我要生成中文的作者，是通过直接修改template.bbl得到的，因此最好还是不要删除它，否则重新生成时我做的修改就没了。
