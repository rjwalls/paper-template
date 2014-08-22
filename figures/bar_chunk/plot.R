
library(ggplot2)
library(plyr)
library(scales)
library(grid)

#### Loading the Summary CSV ####

df.chunks.summary <- read.csv('chunk_summary.csv', stringsAsFactors=TRUE)

#### Plots! ####

p<- ggplot(df.chunks.summary , aes(x=Phone, y=Pages, fill=Category)) + 
  geom_bar(stat="identity", width=0.5, position="fill") + 
  labs(y="Fraction of Chunks", x="") + 
	facet_wrap(~Data, scales="free_x") +guides(fill=guide_legend(nrow=2))+
	theme(legend.position="top",panel.margin = unit(.5, "cm"),axis.text.x = element_text(angle = 45, hjust = 1)) 
ggsave('bar_chunk_fraction.pdf', p, width=5, height=4)
