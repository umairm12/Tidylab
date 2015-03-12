install_from_swirl("Getting and Cleaning Data")
library("swirl")
swirl()
read.csv(path2csv,stringsAsFactors = FALSE)
mydf <- read.csv(path2csv,stringsAsFactors = FALSE)
dim()
dim(mydf)
head(mydf)
library(dplyr)
packageVersion("dplyr")
cran <- tbl_df(mydf)
rm("mydf")
print cran
cran
?select
select(cran,ip_id, package, country)
5:20
(cran, r_arch:country)
select(cran, r_arch:country)
select(cran, country:r_arch)
cran
select(cran, -time)
select(cran, -5:20)
-5:20
-(5:20)
select(cran,-(X:size))
filter(cran, package == "swirl")
(cran, r_version == "3.1.1", country == "US")
filter(cran, r_version == "3.1.1", country == "US")
?Comparison
filter(cran, r_version == "3.0.2", country == "IN")
filter(cran, r_version <= "3.0.2", country == "IN")
filter(cran, country == "US" | country == "IN")
filter(cran, size >= 100500  | r_os == "linux-gnu")
filter(cran, size > 100500  | r_os == "linux-gnu")
filter(cran, size > 100500  , r_os == "linux-gnu")
is.na(c(3, 5, NA, 10))
!is.na(c(3, 5, NA, 10))
filter(cran, !is.na(r_version))
cran2 <- select(cran,size:ip_id)
arrange(cran2, ip_id)
arrange(cran2, desc(ip_id))
arrange(cran2, package, ip_id)
arrange(cran2, country, desc(r_version),ip_id)
cran3 <- select(cran,ip_id,package,size)
cran3
mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_mb = size / 2^20,size_gb = size / 2^10)
mutate(cran3, size_mb = size / 2^20,size_gb = size_mb / 2^10)
mutate(cran3, size+1000)
mutate(cran3, correct_size = size + 1000)
summarize(cran, avg_bytes = mean(size))
library(dplyr)
cran <- tbl_df(mydf)
rm("mydf")
cran
?group_by
by_package <- group_by(cran)
by_package <- group_by(cran,package)
by_package
summarize(mean(size))
summarize(cran,mean(size))
summarize(by_package,mean(size))
?n
submit()
?n_distinct
pack_sum
quantile(pack_sum$count, probs = 0.99)
top_counts <- filter(pack_sum,count > 679)
top_counts
top_counts
View(top_counts)
top_counts_sorted <- arrange(top_counts,desc(count))
View(top_counts_sorted)
quantile(pack_sum$unique, probs= 0.99)
top_unique <- filter(pack_sum,unique > 465)
View(top_unique)
top_unique_sorted <- arrange(top_unique,desc(unique))
View(top_unique)
View(top_unique_sorted)
submit()
submit()
submit()
View(result3)
cran %>%
select() %>%
ip_id,country,package,size
print
source('/tmp/RtmpdkEVOL/chain1.R')
ip_id
source('~/.active-rstudio-document')
source('/tmp/RtmpdkEVOL/chain1.R')
submit()
submit()
submit()
submit()
submit()
library(tidyr)
students
?gather
gather(students,sex,count,-grade)
students2
res <- gather(students2,sex_class,count,-grade)
res
separate(res,sex_class,c("sex","class"))
Sys.getlocale("LC_TIME")
library(lubridate)
help(package = lubridate)
today() -> this_day
this_day
year(this_day)
wday(this_day)
wday(this_day, label = TRUE)
now() -> this_moment
this_moment
minute(this_moment)
ymd("1989-05-17")
ymd("1989-05-17") -> my_date
my_date
class(my_date)
ymd("1989 May 17")
ymd("March 12, 1975")
mdy("March 12, 1975")
dmy("25081985")
dmy(25081985)
ymd("192012")
ymd("//192012")
ymd("1920/1/2")
dt1
ymd_hms(dt1)
hms("03:22:14")
dt2
ymd("2014-05-14, 2014-09-22, 2014-07-11")
ymd(dt2)
update(this_moment, hours = 8, minutes = 34, seconds = 55)
this_moment
update() -> this_moment
update(this_moment)
update(this_moment, hours = 10, minutes = 16, seconds = 0) -> this_moment
this_moment
now() -> nyc
now("America/New_York") -> nyc
nyc
nyc + daya(2) -> depart
nyc + days(2) -> depart
depart
update("depart, 17:34:00")
update("depart, 17:34:00 = TRUE")
depart -> update(depart, hours = 17, minutes = 34)
depart -> update(depart, hours = 17, minutes = 34)
depart <- update(depart, hours = 17, minutes = 34)
depart
library(swirl)
swirl()
depart
depart + hours(15) + minutes(50) -> arrive
with_tz(arrive)
?with_tz
with_tz(arrive, tz=Asia/Hong_Kong)
with_tz(arrive, tz="Asia/Hong_Kong") -> arrive
arrive
tz
mdy("June 17, 2008", tz = "Singapore") -> last_time
last_time
new_interval()
new_interval(arrive, last_time)
?new_interval
new_interval(last_time, arrive) -> how_long
as.period(how_long)
stopwatch()

