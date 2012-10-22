.class public Lcom/android/internal/telephony/gsm/OperatorNumberToId;
.super Ljava/lang/Object;
.source "OperatorNumberToId.java"


# static fields
.field private static COUNTRY_TO_TIMEZONE_ID:[[Ljava/lang/String;


# instance fields
.field private COUNTRY_TO_TIMEZONE:[[Ljava/lang/String;

.field private OPERATOR:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 738
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CN"

    aput-object v2, v1, v4

    const-string v2, "Asia/Shanghai"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "TW"

    aput-object v2, v1, v4

    const-string v2, "Asia/Taipei"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "HK"

    aput-object v2, v1, v4

    const-string v2, "Asia/Hong_Kong"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JP"

    aput-object v3, v2, v4

    const-string v3, "Asia/Tokyo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KR"

    aput-object v3, v2, v4

    const-string v3, "Asia/Seoul"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->COUNTRY_TO_TIMEZONE_ID:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x1f2

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "20201"

    aput-object v2, v1, v4

    const-string v2, "Cosmote"

    aput-object v2, v1, v5

    const-string v2, "GR"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "20205"

    aput-object v2, v1, v4

    const-string v2, "Vodafone GR"

    aput-object v2, v1, v5

    const-string v2, "GR"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "20210"

    aput-object v2, v1, v4

    const-string v2, "TELESTET"

    aput-object v2, v1, v5

    const-string v2, "GR"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "20404"

    aput-object v2, v1, v4

    const-string v2, "Vodafone NL"

    aput-object v2, v1, v5

    const-string v2, "NL"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "20408"

    aput-object v2, v1, v4

    const-string v2, "KPN"

    aput-object v2, v1, v5

    const-string v2, "NL"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20412"

    aput-object v3, v2, v4

    const-string v3, "O2 - NL"

    aput-object v3, v2, v5

    const-string v3, "NL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20416"

    aput-object v3, v2, v4

    const-string v3, "Ben"

    aput-object v3, v2, v5

    const-string v3, "NL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20420"

    aput-object v3, v2, v4

    const-string v3, "dutchtone"

    aput-object v3, v2, v5

    const-string v3, "NL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20601"

    aput-object v3, v2, v4

    const-string v3, "Proximus"

    aput-object v3, v2, v5

    const-string v3, "BE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20610"

    aput-object v3, v2, v4

    const-string v3, "Mobistar"

    aput-object v3, v2, v5

    const-string v3, "BE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20620"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "BE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20801"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "FR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20810"

    aput-object v3, v2, v4

    const-string v3, "SFR"

    aput-object v3, v2, v5

    const-string v3, "FR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "20820"

    aput-object v3, v2, v4

    const-string v3, "BOUYGTEL"

    aput-object v3, v2, v5

    const-string v3, "FR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21303"

    aput-object v3, v2, v4

    const-string v3, "Mobiland"

    aput-object v3, v2, v5

    const-string v3, "AD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21401"

    aput-object v3, v2, v4

    const-string v3, "Vodafone E"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21402"

    aput-object v3, v2, v4

    const-string v3, "MoviStar"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21403"

    aput-object v3, v2, v4

    const-string v3, "AMENA"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21404"

    aput-object v3, v2, v4

    const-string v3, "Xfera"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21407"

    aput-object v3, v2, v4

    const-string v3, "MoviStar"

    aput-object v3, v2, v5

    const-string v3, "ES"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21601"

    aput-object v3, v2, v4

    const-string v3, "Pannon GSM"

    aput-object v3, v2, v5

    const-string v3, "HU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21630"

    aput-object v3, v2, v4

    const-string v3, "Westel"

    aput-object v3, v2, v5

    const-string v3, "HU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21670"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "HU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21803"

    aput-object v3, v2, v4

    const-string v3, "ERONET"

    aput-object v3, v2, v5

    const-string v3, "BA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21805"

    aput-object v3, v2, v4

    const-string v3, "Mobilna Srpska"

    aput-object v3, v2, v5

    const-string v3, "BA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21890"

    aput-object v3, v2, v4

    const-string v3, "GSM BiH"

    aput-object v3, v2, v5

    const-string v3, "BA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21901"

    aput-object v3, v2, v4

    const-string v3, "CRONET"

    aput-object v3, v2, v5

    const-string v3, "HR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "21910"

    aput-object v3, v2, v4

    const-string v3, "VIP"

    aput-object v3, v2, v5

    const-string v3, "HR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22001"

    aput-object v3, v2, v4

    const-string v3, "MOBTEL"

    aput-object v3, v2, v5

    const-string v3, "YU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22002"

    aput-object v3, v2, v4

    const-string v3, "ProMonte"

    aput-object v3, v2, v5

    const-string v3, "YU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22003"

    aput-object v3, v2, v4

    const-string v3, "Telekom Srbija"

    aput-object v3, v2, v5

    const-string v3, "YU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22004"

    aput-object v3, v2, v4

    const-string v3, "MONET"

    aput-object v3, v2, v5

    const-string v3, "YU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22201"

    aput-object v3, v2, v4

    const-string v3, "TIM"

    aput-object v3, v2, v5

    const-string v3, "IT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22210"

    aput-object v3, v2, v4

    const-string v3, "Vodafone IT"

    aput-object v3, v2, v5

    const-string v3, "IT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22288"

    aput-object v3, v2, v4

    const-string v3, "WIND"

    aput-object v3, v2, v5

    const-string v3, "IT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22298"

    aput-object v3, v2, v4

    const-string v3, "Blu SpA"

    aput-object v3, v2, v5

    const-string v3, "IT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22601"

    aput-object v3, v2, v4

    const-string v3, "CONNEX"

    aput-object v3, v2, v5

    const-string v3, "RO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22603"

    aput-object v3, v2, v4

    const-string v3, "Cosmorom"

    aput-object v3, v2, v5

    const-string v3, "RO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22610"

    aput-object v3, v2, v4

    const-string v3, "dialog"

    aput-object v3, v2, v5

    const-string v3, "RO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22801"

    aput-object v3, v2, v4

    const-string v3, "Swiss GSM"

    aput-object v3, v2, v5

    const-string v3, "CH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22802"

    aput-object v3, v2, v4

    const-string/jumbo v3, "sunrise"

    aput-object v3, v2, v5

    const-string v3, "CH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "22803"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "CH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23001"

    aput-object v3, v2, v4

    const-string v3, "PAEGAS"

    aput-object v3, v2, v5

    const-string v3, "CZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23002"

    aput-object v3, v2, v4

    const-string v3, "EUROTEL"

    aput-object v3, v2, v5

    const-string v3, "CZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23003"

    aput-object v3, v2, v4

    const-string v3, "OSKAR"

    aput-object v3, v2, v5

    const-string v3, "CZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23101"

    aput-object v3, v2, v4

    const-string v3, "GLOBTEL"

    aput-object v3, v2, v5

    const-string v3, "SK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23102"

    aput-object v3, v2, v4

    const-string v3, "EUROTEL"

    aput-object v3, v2, v5

    const-string v3, "SK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23201"

    aput-object v3, v2, v4

    const-string v3, "A1"

    aput-object v3, v2, v5

    const-string v3, "AT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23203"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "AT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23205"

    aput-object v3, v2, v4

    const-string v3, "ONE"

    aput-object v3, v2, v5

    const-string v3, "AT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23207"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tele.ring"

    aput-object v3, v2, v5

    const-string v3, "AT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23410"

    aput-object v3, v2, v4

    const-string v3, "O2 - UK"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23415"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23430"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile UK"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23431"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile UK"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23432"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile UK"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23433"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23450"

    aput-object v3, v2, v4

    const-string v3, "JT GSM"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23455"

    aput-object v3, v2, v4

    const-string v3, "GUERNSEY TEL"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23458"

    aput-object v3, v2, v4

    const-string v3, "MANX"

    aput-object v3, v2, v5

    const-string v3, "GB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23801"

    aput-object v3, v2, v4

    const-string v3, "TDK-MOBIL"

    aput-object v3, v2, v5

    const-string v3, "DK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23802"

    aput-object v3, v2, v4

    const-string v3, "SONOFON"

    aput-object v3, v2, v5

    const-string v3, "DK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23820"

    aput-object v3, v2, v4

    const-string v3, "Telia"

    aput-object v3, v2, v5

    const-string v3, "DK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "23830"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "DK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24001"

    aput-object v3, v2, v4

    const-string v3, "Telia S"

    aput-object v3, v2, v5

    const-string v3, "SE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24007"

    aput-object v3, v2, v4

    const-string v3, "IQ"

    aput-object v3, v2, v5

    const-string v3, "SE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24008"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "SE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24201"

    aput-object v3, v2, v4

    const-string v3, "TELENOR"

    aput-object v3, v2, v5

    const-string v3, "NO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24202"

    aput-object v3, v2, v4

    const-string v3, "NetCom"

    aput-object v3, v2, v5

    const-string v3, "NO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24403"

    aput-object v3, v2, v4

    const-string v3, "Telia"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24405"

    aput-object v3, v2, v4

    const-string v3, "RADIOLINJA"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24409"

    aput-object v3, v2, v4

    const-string v3, "FINNET"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24412"

    aput-object v3, v2, v4

    const-string v3, "2G"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24414"

    aput-object v3, v2, v4

    const-string v3, "AMT"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24491"

    aput-object v3, v2, v4

    const-string v3, "SONERA"

    aput-object v3, v2, v5

    const-string v3, "FI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24601"

    aput-object v3, v2, v4

    const-string v3, "OMNITEL"

    aput-object v3, v2, v5

    const-string v3, "LT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24602"

    aput-object v3, v2, v4

    const-string v3, "Bite GSM"

    aput-object v3, v2, v5

    const-string v3, "LT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24603"

    aput-object v3, v2, v4

    const-string v3, "TELE2"

    aput-object v3, v2, v5

    const-string v3, "LT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24701"

    aput-object v3, v2, v4

    const-string v3, "LMT GSM"

    aput-object v3, v2, v5

    const-string v3, "LV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24702"

    aput-object v3, v2, v4

    const-string v3, "BALTCOM"

    aput-object v3, v2, v5

    const-string v3, "LV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24801"

    aput-object v3, v2, v4

    const-string v3, "EMT GSM"

    aput-object v3, v2, v5

    const-string v3, "EE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24802"

    aput-object v3, v2, v4

    const-string v3, "RLE"

    aput-object v3, v2, v5

    const-string v3, "EE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "24803"

    aput-object v3, v2, v4

    const-string v3, "Q GSM"

    aput-object v3, v2, v5

    const-string v3, "EE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25001"

    aput-object v3, v2, v4

    const-string v3, "MTS"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25002"

    aput-object v3, v2, v4

    const-string v3, "NorthWest GSM"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25003"

    aput-object v3, v2, v4

    const-string v3, "NCC"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25005"

    aput-object v3, v2, v4

    const-string v3, "SCS"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25007"

    aput-object v3, v2, v4

    const-string v3, "SMARTS"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25010"

    aput-object v3, v2, v4

    const-string v3, "DTC"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25011"

    aput-object v3, v2, v4

    const-string v3, "Orensot"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25012"

    aput-object v3, v2, v4

    const-string v3, "Far East"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25013"

    aput-object v3, v2, v4

    const-string v3, "Kuban GSM"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25016"

    aput-object v3, v2, v4

    const-string v3, "NTC"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25017"

    aput-object v3, v2, v4

    const-string v3, "Ermak RMS"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25028"

    aput-object v3, v2, v4

    const-string v3, "EXTEL"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25039"

    aput-object v3, v2, v4

    const-string v3, "Uraltel"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25044"

    aput-object v3, v2, v4

    const-string v3, "NC-GSM"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25091"

    aput-object v3, v2, v4

    const-string v3, "Sonic Duo"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25092"

    aput-object v3, v2, v4

    const-string v3, "Primtel"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25093"

    aput-object v3, v2, v4

    const-string v3, "JSC Telecom XXI"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25099"

    aput-object v3, v2, v4

    const-string v3, "Bee Line"

    aput-object v3, v2, v5

    const-string v3, "RU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25501"

    aput-object v3, v2, v4

    const-string v3, "UMC"

    aput-object v3, v2, v5

    const-string v3, "UA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25502"

    aput-object v3, v2, v4

    const-string v3, "WellCOM"

    aput-object v3, v2, v5

    const-string v3, "UA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25503"

    aput-object v3, v2, v4

    const-string v3, "Kyivstar"

    aput-object v3, v2, v5

    const-string v3, "UA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25505"

    aput-object v3, v2, v4

    const-string v3, "Golden Telecom"

    aput-object v3, v2, v5

    const-string v3, "UA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25701"

    aput-object v3, v2, v4

    const-string v3, "VELCOM"

    aput-object v3, v2, v5

    const-string v3, "BY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25901"

    aput-object v3, v2, v4

    const-string v3, "VOXTEL"

    aput-object v3, v2, v5

    const-string v3, "MD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "25902"

    aput-object v3, v2, v4

    const-string v3, "MOLDCELL"

    aput-object v3, v2, v5

    const-string v3, "MD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26001"

    aput-object v3, v2, v4

    const-string v3, "Plus GSM"

    aput-object v3, v2, v5

    const-string v3, "PL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26002"

    aput-object v3, v2, v4

    const-string v3, "Era GSM"

    aput-object v3, v2, v5

    const-string v3, "PL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26003"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "PL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26201"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26202"

    aput-object v3, v2, v4

    const-string v3, "Vodafone D2"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26203"

    aput-object v3, v2, v4

    const-string v3, "E-Plus"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26207"

    aput-object v3, v2, v4

    const-string v3, "O2 - DE"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26213"

    aput-object v3, v2, v4

    const-string v3, "Mobilcom"

    aput-object v3, v2, v5

    const-string v3, "DE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26601"

    aput-object v3, v2, v4

    const-string v3, "GIBTEL"

    aput-object v3, v2, v5

    const-string v3, "GI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26801"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "PT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26803"

    aput-object v3, v2, v4

    const-string v3, "OPTIMUS"

    aput-object v3, v2, v5

    const-string v3, "PT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "26806"

    aput-object v3, v2, v4

    const-string v3, "TMN"

    aput-object v3, v2, v5

    const-string v3, "PT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27001"

    aput-object v3, v2, v4

    const-string v3, "LUXGSM"

    aput-object v3, v2, v5

    const-string v3, "LU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27077"

    aput-object v3, v2, v4

    const-string v3, "TANGO"

    aput-object v3, v2, v5

    const-string v3, "LU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27201"

    aput-object v3, v2, v4

    const-string v3, "Vodafone IRL"

    aput-object v3, v2, v5

    const-string v3, "IE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27202"

    aput-object v3, v2, v4

    const-string v3, "O2 - IRL"

    aput-object v3, v2, v5

    const-string v3, "IE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27203"

    aput-object v3, v2, v4

    const-string v3, "METEOR"

    aput-object v3, v2, v5

    const-string v3, "IE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27401"

    aput-object v3, v2, v4

    const-string v3, "SIMINN"

    aput-object v3, v2, v5

    const-string v3, "IS"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27402"

    aput-object v3, v2, v4

    const-string v3, "TAL"

    aput-object v3, v2, v5

    const-string v3, "IS"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27404"

    aput-object v3, v2, v4

    const-string v3, "Viking"

    aput-object v3, v2, v5

    const-string v3, "IS"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27601"

    aput-object v3, v2, v4

    const-string v3, "AMC"

    aput-object v3, v2, v5

    const-string v3, "AL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27602"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "AL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27801"

    aput-object v3, v2, v4

    const-string v3, "Vodafone Malta"

    aput-object v3, v2, v5

    const-string v3, "MT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "27821"

    aput-object v3, v2, v4

    const-string v3, "go mobile"

    aput-object v3, v2, v5

    const-string v3, "MT"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28001"

    aput-object v3, v2, v4

    const-string v3, "CYTAGSM"

    aput-object v3, v2, v5

    const-string v3, "CY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28201"

    aput-object v3, v2, v4

    const-string v3, "GEOCELL"

    aput-object v3, v2, v5

    const-string v3, "GE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28202"

    aput-object v3, v2, v4

    const-string v3, "Magti GSM"

    aput-object v3, v2, v5

    const-string v3, "GE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28203"

    aput-object v3, v2, v4

    const-string v3, "GEO 03"

    aput-object v3, v2, v5

    const-string v3, "GE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28301"

    aput-object v3, v2, v4

    const-string v3, "ARMGSM"

    aput-object v3, v2, v5

    const-string v3, "AM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28401"

    aput-object v3, v2, v4

    const-string v3, "M-TEL GSM"

    aput-object v3, v2, v5

    const-string v3, "BG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28601"

    aput-object v3, v2, v4

    const-string v3, "TURKCELL"

    aput-object v3, v2, v5

    const-string v3, "TR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28602"

    aput-object v3, v2, v4

    const-string v3, "TELSIM"

    aput-object v3, v2, v5

    const-string v3, "TR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28603"

    aput-object v3, v2, v4

    const-string v3, "ARIA"

    aput-object v3, v2, v5

    const-string v3, "TR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28604"

    aput-object v3, v2, v4

    const-string v3, "AYCELL"

    aput-object v3, v2, v5

    const-string v3, "TR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "28801"

    aput-object v3, v2, v4

    const-string v3, "FT GSM"

    aput-object v3, v2, v5

    const-string v3, "FO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29001"

    aput-object v3, v2, v4

    const-string v3, "TELE Greenland"

    aput-object v3, v2, v5

    const-string v3, "GR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29340"

    aput-object v3, v2, v4

    const-string v3, "SI.MOBIL"

    aput-object v3, v2, v5

    const-string v3, "SI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29341"

    aput-object v3, v2, v4

    const-string v3, "MOBITEL"

    aput-object v3, v2, v5

    const-string v3, "SI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29401"

    aput-object v3, v2, v4

    const-string v3, "MOBIMAK"

    aput-object v3, v2, v5

    const-string v3, "MK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29501"

    aput-object v3, v2, v4

    const-string v3, "TELECOM"

    aput-object v3, v2, v5

    const-string v3, "LI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29502"

    aput-object v3, v2, v4

    const-string v3, "MONTEL"

    aput-object v3, v2, v5

    const-string v3, "LI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29505"

    aput-object v3, v2, v4

    const-string v3, "FL1"

    aput-object v3, v2, v5

    const-string v3, "LI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "29577"

    aput-object v3, v2, v4

    const-string v3, "LI TANGO"

    aput-object v3, v2, v5

    const-string v3, "LI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "30237"

    aput-object v3, v2, v4

    const-string v3, "Microcell"

    aput-object v3, v2, v5

    const-string v3, "CA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "30272"

    aput-object v3, v2, v4

    const-string v3, "Rogers AT&T"

    aput-object v3, v2, v5

    const-string v3, "CA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31001"

    aput-object v3, v2, v4

    const-string v3, "Cellnet"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31011"

    aput-object v3, v2, v4

    const-string v3, "Wireless 2000"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31015"

    aput-object v3, v2, v4

    const-string v3, "Cingular"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31016"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31017"

    aput-object v3, v2, v4

    const-string v3, "Cingular"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31018"

    aput-object v3, v2, v4

    const-string v3, "Cingular"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31020"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31021"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31022"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31023"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31024"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31025"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31026"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31027"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31031"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31034"

    aput-object v3, v2, v4

    const-string v3, "WestLink"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31035"

    aput-object v3, v2, v4

    const-string v3, "Carolina"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31038"

    aput-object v3, v2, v4

    const-string v3, "AT&T Wireless"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31041"

    aput-object v3, v2, v4

    const-string v3, "Cingular"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31046"

    aput-object v3, v2, v4

    const-string v3, "TMP Corp"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31058"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31061"

    aput-object v3, v2, v4

    const-string v3, "Epic Touch"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31063"

    aput-object v3, v2, v4

    const-string v3, "AmeriLink"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31064"

    aput-object v3, v2, v4

    const-string v3, "Einstein PCS"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31066"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31067"

    aput-object v3, v2, v4

    const-string v3, "Wireless 2000"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31068"

    aput-object v3, v2, v4

    const-string v3, "NPI Wireless"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31069"

    aput-object v3, v2, v4

    const-string v3, "Conestoga"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31074"

    aput-object v3, v2, v4

    const-string v3, "Telemetrix"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31076"

    aput-object v3, v2, v4

    const-string v3, "PTSI"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31077"

    aput-object v3, v2, v4

    const-string v3, "Iowa Wireless"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31078"

    aput-object v3, v2, v4

    const-string v3, "Airlink PCS"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31079"

    aput-object v3, v2, v4

    const-string v3, "PinPoint"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31080"

    aput-object v3, v2, v4

    const-string v3, "T-Mobile"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31098"

    aput-object v3, v2, v4

    const-string v3, "AWS"

    aput-object v3, v2, v5

    const-string v3, "US"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31114"

    aput-object v3, v2, v4

    const-string v3, "Sprocket"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "31601"

    aput-object v3, v2, v4

    const-string v3, "Nextel"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "33805"

    aput-object v3, v2, v4

    const-string v3, "Digicel"

    aput-object v3, v2, v5

    const-string v3, "JM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "34001"

    aput-object v3, v2, v4

    const-string v3, "Orange "

    aput-object v3, v2, v5

    const-string v3, "FW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "34020"

    aput-object v3, v2, v4

    const-string v3, "Bouygues"

    aput-object v3, v2, v5

    const-string v3, "FW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "34430"

    aput-object v3, v2, v4

    const-string v3, "APUA PCS"

    aput-object v3, v2, v5

    const-string v3, "AG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "35001"

    aput-object v3, v2, v4

    const-string v3, "Telecom"

    aput-object v3, v2, v5

    const-string v3, "BM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "36251"

    aput-object v3, v2, v4

    const-string v3, "Telcell GSM"

    aput-object v3, v2, v5

    const-string v3, "AN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "36801"

    aput-object v3, v2, v4

    const-string v3, "C_Com"

    aput-object v3, v2, v5

    const-string v3, "CU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "37001"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "DO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40001"

    aput-object v3, v2, v4

    const-string v3, "AZERCELL GSM"

    aput-object v3, v2, v5

    const-string v3, "AZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40002"

    aput-object v3, v2, v4

    const-string v3, "BAKCELL GSM 2000"

    aput-object v3, v2, v5

    const-string v3, "AZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40101"

    aput-object v3, v2, v4

    const-string v3, "K-MOBILE"

    aput-object v3, v2, v5

    const-string v3, "KZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40102"

    aput-object v3, v2, v4

    const-string v3, "K\'CELL"

    aput-object v3, v2, v5

    const-string v3, "KZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40401"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40402"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40403"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40404"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40405"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40407"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40409"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40410"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40411"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40412"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40413"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40414"

    aput-object v3, v2, v4

    const-string v3, "Spice"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40415"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40416"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40418"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40419"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40420"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40421"

    aput-object v3, v2, v4

    const-string v3, "BPL Mobile"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40422"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40424"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40427"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40429"

    aput-object v3, v2, v4

    const-string v3, "Aircel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40430"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40431"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40434"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40436"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40437"

    aput-object v3, v2, v4

    const-string v3, "Aircel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40438"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40440"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40441"

    aput-object v3, v2, v4

    const-string v3, "RPG"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40443"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40444"

    aput-object v3, v2, v4

    const-string v3, "Spice"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40445"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40446"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40449"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40450"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40451"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40452"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40453"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40454"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40455"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40456"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40457"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40458"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40459"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40460"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40462"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40464"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40466"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40467"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40468"

    aput-object v3, v2, v4

    const-string v3, "DOLPHIN"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40469"

    aput-object v3, v2, v4

    const-string v3, "MTNL"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40470"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40471"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40472"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40473"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40474"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40475"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40476"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40477"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40478"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40479"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40480"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40481"

    aput-object v3, v2, v4

    const-string v3, "Cellone"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40482"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40483"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40484"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40485"

    aput-object v3, v2, v4

    const-string v3, "Reliance"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40486"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40487"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40488"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40489"

    aput-object v3, v2, v4

    const-string v3, "IDEA"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40490"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40492"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40493"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40494"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40495"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40496"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40497"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40498"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40551"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40552"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40553"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40554"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40555"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40556"

    aput-object v3, v2, v4

    const-string v3, "Airtel"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40566"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "40567"

    aput-object v3, v2, v4

    const-string v3, "Hutch"

    aput-object v3, v2, v5

    const-string v3, "IN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41001"

    aput-object v3, v2, v4

    const-string v3, "Mobilink"

    aput-object v3, v2, v5

    const-string v3, "PK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41302"

    aput-object v3, v2, v4

    const-string v3, "DIALOG"

    aput-object v3, v2, v5

    const-string v3, "LK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41303"

    aput-object v3, v2, v4

    const-string v3, "CELLTEL"

    aput-object v3, v2, v5

    const-string v3, "LK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41401"

    aput-object v3, v2, v4

    const-string v3, "MM 900"

    aput-object v3, v2, v5

    const-string v3, "MM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41501"

    aput-object v3, v2, v4

    const-string v3, "Cellis"

    aput-object v3, v2, v5

    const-string v3, "LB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41503"

    aput-object v3, v2, v4

    const-string v3, "LibanCell"

    aput-object v3, v2, v5

    const-string v3, "LB"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41601"

    aput-object v3, v2, v4

    const-string v3, "Fastlink"

    aput-object v3, v2, v5

    const-string v3, "JO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41677"

    aput-object v3, v2, v4

    const-string v3, "MobileCom"

    aput-object v3, v2, v5

    const-string v3, "JO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41702"

    aput-object v3, v2, v4

    const-string v3, "Spacetel"

    aput-object v3, v2, v5

    const-string v3, "SY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41709"

    aput-object v3, v2, v4

    const-string v3, "MOBILE SYRIA"

    aput-object v3, v2, v5

    const-string v3, "SY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41902"

    aput-object v3, v2, v4

    const-string v3, "MTCNet"

    aput-object v3, v2, v5

    const-string v3, "KW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "41903"

    aput-object v3, v2, v4

    const-string v3, "WATANIYA"

    aput-object v3, v2, v5

    const-string v3, "KW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42001"

    aput-object v3, v2, v4

    const-string v3, "Al-Jawal"

    aput-object v3, v2, v5

    const-string v3, "SA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42007"

    aput-object v3, v2, v4

    const-string v3, "EAE"

    aput-object v3, v2, v5

    const-string v3, "SA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42102"

    aput-object v3, v2, v4

    const-string v3, "Spacetel"

    aput-object v3, v2, v5

    const-string v3, "YE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42202"

    aput-object v3, v2, v4

    const-string v3, "OMAN MOBILE"

    aput-object v3, v2, v5

    const-string v3, "OM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42402"

    aput-object v3, v2, v4

    const-string v3, "ETISALAT"

    aput-object v3, v2, v5

    const-string v3, "AE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42501"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "IL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42505"

    aput-object v3, v2, v4

    const-string v3, "JAWWAL"

    aput-object v3, v2, v5

    const-string v3, "IL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42601"

    aput-object v3, v2, v4

    const-string v3, "MOBILE PLUS"

    aput-object v3, v2, v5

    const-string v3, "BH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42701"

    aput-object v3, v2, v4

    const-string v3, "QATARNET"

    aput-object v3, v2, v5

    const-string v3, "QA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42899"

    aput-object v3, v2, v4

    const-string v3, "MobiCom"

    aput-object v3, v2, v5

    const-string v3, "MN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "42901"

    aput-object v3, v2, v4

    const-string v3, "NTC"

    aput-object v3, v2, v5

    const-string v3, "NP"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43211"

    aput-object v3, v2, v4

    const-string v3, "TCI"

    aput-object v3, v2, v5

    const-string v3, "IR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43214"

    aput-object v3, v2, v4

    const-string v3, "KISH"

    aput-object v3, v2, v5

    const-string v3, "IR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43401"

    aput-object v3, v2, v4

    const-string v3, "Buztel"

    aput-object v3, v2, v5

    const-string v3, "UZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43402"

    aput-object v3, v2, v4

    const-string v3, "Uzmacom"

    aput-object v3, v2, v5

    const-string v3, "UZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43404"

    aput-object v3, v2, v4

    const-string v3, "UZB DAEWOO-GSM"

    aput-object v3, v2, v5

    const-string v3, "UZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43405"

    aput-object v3, v2, v4

    const-string v3, "Coscom"

    aput-object v3, v2, v5

    const-string v3, "UZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43701"

    aput-object v3, v2, v4

    const-string v3, "BITEL"

    aput-object v3, v2, v5

    const-string v3, "KG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "43801"

    aput-object v3, v2, v4

    const-string v3, "BCTI"

    aput-object v3, v2, v5

    const-string v3, "TM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45201"

    aput-object v3, v2, v4

    const-string v3, "MOBIFONE"

    aput-object v3, v2, v5

    const-string v3, "VN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45202"

    aput-object v3, v2, v4

    const-string v3, "VINAFONE"

    aput-object v3, v2, v5

    const-string v3, "VN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45400"

    aput-object v3, v2, v4

    const-string v3, "CSL"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45401"

    aput-object v3, v2, v4

    const-string v3, "NEW WORLD"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45402"

    aput-object v3, v2, v4

    const-string v3, "CSL"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45404"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45406"

    aput-object v3, v2, v4

    const-string v3, "SMC"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45410"

    aput-object v3, v2, v4

    const-string v3, "NEW WORLD"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45412"

    aput-object v3, v2, v4

    const-string v3, "PEOPLES"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45416"

    aput-object v3, v2, v4

    const-string v3, "SUNDAY"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45418"

    aput-object v3, v2, v4

    const-string v3, "HK TELECOM"

    aput-object v3, v2, v5

    const-string v3, "HK"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45500"

    aput-object v3, v2, v4

    const-string v3, "SmarTone"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45501"

    aput-object v3, v2, v4

    const-string v3, "CTMGSM"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45503"

    aput-object v3, v2, v4

    const-string v3, "HT Macau"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45601"

    aput-object v3, v2, v4

    const-string v3, "MobiTel"

    aput-object v3, v2, v5

    const-string v3, "KH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45602"

    aput-object v3, v2, v4

    const-string v3, "SAMART-GSM"

    aput-object v3, v2, v5

    const-string v3, "KH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "45701"

    aput-object v3, v2, v4

    const-string v3, "LAO GSM"

    aput-object v3, v2, v5

    const-string v3, "LA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46000"

    aput-object v3, v2, v4

    const-string v3, "CHINA MOBILE"

    aput-object v3, v2, v5

    const-string v3, "CN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46001"

    aput-object v3, v2, v4

    const-string v3, "CHN-CUGSM"

    aput-object v3, v2, v5

    const-string v3, "CN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46002"

    aput-object v3, v2, v4

    const-string v3, "CHINA MOBILE"

    aput-object v3, v2, v5

    const-string v3, "CN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46601"

    aput-object v3, v2, v4

    const-string v3, "Far EasTone"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46606"

    aput-object v3, v2, v4

    const-string v3, "TUNTEX"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46668"

    aput-object v3, v2, v4

    const-string v3, "ACeS"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46688"

    aput-object v3, v2, v4

    const-string v3, "KGT"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46692"

    aput-object v3, v2, v4

    const-string v3, "Chunghwa"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46693"

    aput-object v3, v2, v4

    const-string v3, "MobiTai"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46697"

    aput-object v3, v2, v4

    const-string v3, "TWN GSM"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "46699"

    aput-object v3, v2, v4

    const-string v3, "TransAsia"

    aput-object v3, v2, v5

    const-string v3, "TW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "47001"

    aput-object v3, v2, v4

    const-string v3, "GrameemPhone"

    aput-object v3, v2, v5

    const-string v3, "BD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "47002"

    aput-object v3, v2, v4

    const-string v3, "AKTEL"

    aput-object v3, v2, v5

    const-string v3, "BD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "47003"

    aput-object v3, v2, v4

    const-string v3, "ShebaWorld"

    aput-object v3, v2, v5

    const-string v3, "BD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "47019"

    aput-object v3, v2, v4

    const-string v3, "Mobile 2000"

    aput-object v3, v2, v5

    const-string v3, "BD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "47201"

    aput-object v3, v2, v4

    const-string v3, "DHIMOBILE"

    aput-object v3, v2, v5

    const-string v3, "MV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50212"

    aput-object v3, v2, v4

    const-string v3, "Maxis Mobile"

    aput-object v3, v2, v5

    const-string v3, "MY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50213"

    aput-object v3, v2, v4

    const-string v3, "TM Touch"

    aput-object v3, v2, v5

    const-string v3, "MY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50216"

    aput-object v3, v2, v4

    const-string v3, "DiGi"

    aput-object v3, v2, v5

    const-string v3, "MY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50217"

    aput-object v3, v2, v4

    const-string v3, "ADAM"

    aput-object v3, v2, v5

    const-string v3, "MY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50219"

    aput-object v3, v2, v4

    const-string v3, "CELCOM"

    aput-object v3, v2, v5

    const-string v3, "MY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50501"

    aput-object v3, v2, v4

    const-string v3, "MobileNet"

    aput-object v3, v2, v5

    const-string v3, "AU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50502"

    aput-object v3, v2, v4

    const-string v3, "OPTUS"

    aput-object v3, v2, v5

    const-string v3, "AU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50503"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "AU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "50508"

    aput-object v3, v2, v4

    const-string v3, "One.Tel"

    aput-object v3, v2, v5

    const-string v3, "AU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51000"

    aput-object v3, v2, v4

    const-string v3, "ACeS"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51001"

    aput-object v3, v2, v4

    const-string v3, "SATELINDOCEL"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51008"

    aput-object v3, v2, v4

    const-string v3, "LIPPO TEL"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51010"

    aput-object v3, v2, v4

    const-string v3, "TELKOMSEL"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51011"

    aput-object v3, v2, v4

    const-string v3, "GSM-XL"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51021"

    aput-object v3, v2, v4

    const-string v3, "INDOSAT"

    aput-object v3, v2, v5

    const-string v3, "ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51501"

    aput-object v3, v2, v4

    const-string v3, "ISLACOM"

    aput-object v3, v2, v5

    const-string v3, "PH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51502"

    aput-object v3, v2, v4

    const-string v3, "Globe"

    aput-object v3, v2, v5

    const-string v3, "PH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51503"

    aput-object v3, v2, v4

    const-string v3, "SMART"

    aput-object v3, v2, v5

    const-string v3, "PH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51505"

    aput-object v3, v2, v4

    const-string v3, "Digitel"

    aput-object v3, v2, v5

    const-string v3, "PH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "51511"

    aput-object v3, v2, v4

    const-string v3, "ACeS"

    aput-object v3, v2, v5

    const-string v3, "PH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52001"

    aput-object v3, v2, v4

    const-string v3, "AIS GSM"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52015"

    aput-object v3, v2, v4

    const-string v3, "ACT Mobile"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52018"

    aput-object v3, v2, v4

    const-string v3, "WP-1800"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52020"

    aput-object v3, v2, v4

    const-string v3, "ACeS"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52023"

    aput-object v3, v2, v4

    const-string v3, "HELLO"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52099"

    aput-object v3, v2, v4

    const-string v3, "Orange"

    aput-object v3, v2, v5

    const-string v3, "TH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52501"

    aput-object v3, v2, v4

    const-string v3, "ST-GSM-SGP"

    aput-object v3, v2, v5

    const-string v3, "SG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52502"

    aput-object v3, v2, v4

    const-string v3, "ST-GSM1800-SGP"

    aput-object v3, v2, v5

    const-string v3, "SG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52503"

    aput-object v3, v2, v4

    const-string v3, "M1-GSM-SGP"

    aput-object v3, v2, v5

    const-string v3, "SG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52504"

    aput-object v3, v2, v4

    const-string v3, "SGP-M1-3GSM"

    aput-object v3, v2, v5

    const-string v3, "SG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52505"

    aput-object v3, v2, v4

    const-string v3, "STARHUB-SGP"

    aput-object v3, v2, v5

    const-string v3, "SG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "52811"

    aput-object v3, v2, v4

    const-string v3, "BRU TSTCom"

    aput-object v3, v2, v5

    const-string v3, "BN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "53001"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "NZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "53901"

    aput-object v3, v2, v4

    const-string v3, "Tonga Comm."

    aput-object v3, v2, v5

    const-string v3, "TO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54100"

    aput-object v3, v2, v4

    const-string v3, "ACeS"

    aput-object v3, v2, v5

    const-string v3, "VU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54101"

    aput-object v3, v2, v4

    const-string v3, "SMILE"

    aput-object v3, v2, v5

    const-string v3, "VU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54201"

    aput-object v3, v2, v4

    const-string v3, "Vodafone"

    aput-object v3, v2, v5

    const-string v3, "FJ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54411"

    aput-object v3, v2, v4

    const-string v3, "Blue Sky"

    aput-object v3, v2, v5

    const-string v3, "AS"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54601"

    aput-object v3, v2, v4

    const-string v3, "MOBILIS"

    aput-object v3, v2, v5

    const-string v3, "NC"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "54720"

    aput-object v3, v2, v4

    const-string v3, "VINI"

    aput-object v3, v2, v5

    const-string v3, "PF"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "55001"

    aput-object v3, v2, v4

    const-string v3, "FSM"

    aput-object v3, v2, v5

    const-string v3, "FM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60201"

    aput-object v3, v2, v4

    const-string v3, "MobiNiL"

    aput-object v3, v2, v5

    const-string v3, "EG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60202"

    aput-object v3, v2, v4

    const-string v3, "CLICK GSM"

    aput-object v3, v2, v5

    const-string v3, "EG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60301"

    aput-object v3, v2, v4

    const-string v3, "AMN"

    aput-object v3, v2, v5

    const-string v3, "DZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60400"

    aput-object v3, v2, v4

    const-string v3, "Meditel"

    aput-object v3, v2, v5

    const-string v3, "MA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60401"

    aput-object v3, v2, v4

    const-string v3, "IAM"

    aput-object v3, v2, v5

    const-string v3, "MA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60502"

    aput-object v3, v2, v4

    const-string v3, "TUNICELL"

    aput-object v3, v2, v5

    const-string v3, "TN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60801"

    aput-object v3, v2, v4

    const-string v3, "ALIZE"

    aput-object v3, v2, v5

    const-string v3, "SN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "60802"

    aput-object v3, v2, v4

    const-string v3, "SENTEL"

    aput-object v3, v2, v5

    const-string v3, "SN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61001"

    aput-object v3, v2, v4

    const-string v3, "MALITEL"

    aput-object v3, v2, v5

    const-string v3, "ML"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61101"

    aput-object v3, v2, v4

    const-string v3, "MOBILIS"

    aput-object v3, v2, v5

    const-string v3, "GN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61102"

    aput-object v3, v2, v4

    const-string v3, "LAGUI"

    aput-object v3, v2, v5

    const-string v3, "GN"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61201"

    aput-object v3, v2, v4

    const-string v3, "CORA"

    aput-object v3, v2, v5

    const-string v3, "CI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61203"

    aput-object v3, v2, v4

    const-string v3, "Ivoiris"

    aput-object v3, v2, v5

    const-string v3, "CI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61205"

    aput-object v3, v2, v4

    const-string v3, "TELECEL"

    aput-object v3, v2, v5

    const-string v3, "CI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61302"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "BF"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61402"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "NE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61501"

    aput-object v3, v2, v4

    const-string v3, "TOGOCEL"

    aput-object v3, v2, v5

    const-string v3, "TG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61601"

    aput-object v3, v2, v4

    const-string v3, "LIBERCOM"

    aput-object v3, v2, v5

    const-string v3, "BJ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61602"

    aput-object v3, v2, v4

    const-string v3, "Telecel Benin"

    aput-object v3, v2, v5

    const-string v3, "BJ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61603"

    aput-object v3, v2, v4

    const-string v3, "BENINCELL"

    aput-object v3, v2, v5

    const-string v3, "BJ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61701"

    aput-object v3, v2, v4

    const-string v3, "CELLPLUS"

    aput-object v3, v2, v5

    const-string v3, "MU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61710"

    aput-object v3, v2, v4

    const-string v3, "EMTEL"

    aput-object v3, v2, v5

    const-string v3, "MU"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "61801"

    aput-object v3, v2, v4

    const-string v3, "Omega"

    aput-object v3, v2, v5

    const-string v3, "LR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62001"

    aput-object v3, v2, v4

    const-string v3, "SPACEFON"

    aput-object v3, v2, v5

    const-string v3, "GH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62002"

    aput-object v3, v2, v4

    const-string v3, "ONEtouch"

    aput-object v3, v2, v5

    const-string v3, "GH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62003"

    aput-object v3, v2, v4

    const-string v3, "MOBITEL"

    aput-object v3, v2, v5

    const-string v3, "GH"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62100"

    aput-object v3, v2, v4

    const-string v3, "MTN"

    aput-object v3, v2, v5

    const-string v3, "NG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62120"

    aput-object v3, v2, v4

    const-string v3, "ECONET"

    aput-object v3, v2, v5

    const-string v3, "NG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62130"

    aput-object v3, v2, v4

    const-string v3, "MTN"

    aput-object v3, v2, v5

    const-string v3, "NG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62140"

    aput-object v3, v2, v4

    const-string v3, "NITEL GSM"

    aput-object v3, v2, v5

    const-string v3, "NG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62201"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "TD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62202"

    aput-object v3, v2, v4

    const-string v3, "LIBERTIS"

    aput-object v3, v2, v5

    const-string v3, "TD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62401"

    aput-object v3, v2, v4

    const-string v3, "MTN-CAM"

    aput-object v3, v2, v5

    const-string v3, "CM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62402"

    aput-object v3, v2, v4

    const-string v3, "MOBILIS"

    aput-object v3, v2, v5

    const-string v3, "CM"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62501"

    aput-object v3, v2, v4

    const-string v3, "CPV MOVEL"

    aput-object v3, v2, v5

    const-string v3, "CV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62801"

    aput-object v3, v2, v4

    const-string v3, "LIBERTIS"

    aput-object v3, v2, v5

    const-string v3, "GA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62802"

    aput-object v3, v2, v4

    const-string v3, "GO Celtel"

    aput-object v3, v2, v5

    const-string v3, "GA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62803"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "GA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62901"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "CG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "62910"

    aput-object v3, v2, v4

    const-string v3, "LIBERTIS"

    aput-object v3, v2, v5

    const-string v3, "CG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63001"

    aput-object v3, v2, v4

    const-string v3, "CELLNET"

    aput-object v3, v2, v5

    const-string v3, "CD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63002"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "CD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63004"

    aput-object v3, v2, v4

    const-string v3, "CELLCO"

    aput-object v3, v2, v5

    const-string v3, "CD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63089"

    aput-object v3, v2, v4

    const-string v3, "OASIS"

    aput-object v3, v2, v5

    const-string v3, "CD"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63301"

    aput-object v3, v2, v4

    const-string v3, "SEYCEL"

    aput-object v3, v2, v5

    const-string v3, "SC"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63310"

    aput-object v3, v2, v4

    const-string v3, "AIRTEL"

    aput-object v3, v2, v5

    const-string v3, "SC"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63401"

    aput-object v3, v2, v4

    const-string v3, "MobiTel"

    aput-object v3, v2, v5

    const-string v3, "MZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63510"

    aput-object v3, v2, v4

    const-string v3, "Rwandacell"

    aput-object v3, v2, v5

    const-string v3, "RW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63601"

    aput-object v3, v2, v4

    const-string v3, "ETMTN"

    aput-object v3, v2, v5

    const-string v3, "ET"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63701"

    aput-object v3, v2, v4

    const-string v3, "BARAKAAT"

    aput-object v3, v2, v5

    const-string v3, "SO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63902"

    aput-object v3, v2, v4

    const-string v3, "Safaricom"

    aput-object v3, v2, v5

    const-string v3, "KE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "63903"

    aput-object v3, v2, v4

    const-string v3, "KENCELL"

    aput-object v3, v2, v5

    const-string v3, "KE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64001"

    aput-object v3, v2, v4

    const-string v3, "TRITEL"

    aput-object v3, v2, v5

    const-string v3, "TZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64002"

    aput-object v3, v2, v4

    const-string v3, "MobiTel"

    aput-object v3, v2, v5

    const-string v3, "TZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64003"

    aput-object v3, v2, v4

    const-string v3, "ZANTEL"

    aput-object v3, v2, v5

    const-string v3, "TZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64004"

    aput-object v3, v2, v4

    const-string v3, "Vodacom"

    aput-object v3, v2, v5

    const-string v3, "TZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64005"

    aput-object v3, v2, v4

    const-string v3, "CELTEL"

    aput-object v3, v2, v5

    const-string v3, "TZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64101"

    aput-object v3, v2, v4

    const-string v3, "CelTel"

    aput-object v3, v2, v5

    const-string v3, "UG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64110"

    aput-object v3, v2, v4

    const-string v3, "MTN-UGANDA"

    aput-object v3, v2, v5

    const-string v3, "UG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64111"

    aput-object v3, v2, v4

    const-string v3, "UTL TELECEL"

    aput-object v3, v2, v5

    const-string v3, "UG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64201"

    aput-object v3, v2, v4

    const-string v3, "Spacetel"

    aput-object v3, v2, v5

    const-string v3, "BI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64202"

    aput-object v3, v2, v4

    const-string v3, "SAFARIS"

    aput-object v3, v2, v5

    const-string v3, "BI"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64301"

    aput-object v3, v2, v4

    const-string/jumbo v3, "mCel"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64501"

    aput-object v3, v2, v4

    const-string v3, "ZAMCELL"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64502"

    aput-object v3, v2, v4

    const-string v3, "TELECEL"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64601"

    aput-object v3, v2, v4

    const-string v3, "Madacom"

    aput-object v3, v2, v5

    const-string v3, "MG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64602"

    aput-object v3, v2, v4

    const-string v3, "ANTARIS"

    aput-object v3, v2, v5

    const-string v3, "MG"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64700"

    aput-object v3, v2, v4

    const-string v3, "Orange Reunion"

    aput-object v3, v2, v5

    const-string v3, "RE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64710"

    aput-object v3, v2, v4

    const-string v3, "SFR Reunion"

    aput-object v3, v2, v5

    const-string v3, "RE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64801"

    aput-object v3, v2, v4

    const-string v3, "NET*ONE"

    aput-object v3, v2, v5

    const-string v3, "ZW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64803"

    aput-object v3, v2, v4

    const-string v3, "TELECEL"

    aput-object v3, v2, v5

    const-string v3, "ZW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64804"

    aput-object v3, v2, v4

    const-string v3, "ECONET"

    aput-object v3, v2, v5

    const-string v3, "ZW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "64901"

    aput-object v3, v2, v4

    const-string v3, "MTC"

    aput-object v3, v2, v5

    const-string v3, "NA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65001"

    aput-object v3, v2, v4

    const-string v3, "CALLPOINT 90"

    aput-object v3, v2, v5

    const-string v3, "MW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65010"

    aput-object v3, v2, v4

    const-string v3, "CelTel"

    aput-object v3, v2, v5

    const-string v3, "MW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65101"

    aput-object v3, v2, v4

    const-string v3, "Vodacom"

    aput-object v3, v2, v5

    const-string v3, "LS"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65201"

    aput-object v3, v2, v4

    const-string v3, "MASCOM"

    aput-object v3, v2, v5

    const-string v3, "BW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65202"

    aput-object v3, v2, v4

    const-string v3, "VISTA"

    aput-object v3, v2, v5

    const-string v3, "BW"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65310"

    aput-object v3, v2, v4

    const-string v3, "SwaziMTN"

    aput-object v3, v2, v5

    const-string v3, "SZ"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65501"

    aput-object v3, v2, v4

    const-string v3, "Vodacom"

    aput-object v3, v2, v5

    const-string v3, "ZA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65507"

    aput-object v3, v2, v4

    const-string v3, "Cell C (Pty) Ltd"

    aput-object v3, v2, v5

    const-string v3, "ZA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "65510"

    aput-object v3, v2, v4

    const-string v3, "MTN"

    aput-object v3, v2, v5

    const-string v3, "ZA"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "70601"

    aput-object v3, v2, v4

    const-string v3, "PERSONAL"

    aput-object v3, v2, v5

    const-string v3, "SV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "70602"

    aput-object v3, v2, v4

    const-string v3, "DIGICEL"

    aput-object v3, v2, v5

    const-string v3, "SV"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "71610"

    aput-object v3, v2, v4

    const-string v3, "TIM"

    aput-object v3, v2, v5

    const-string v3, "PE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72207"

    aput-object v3, v2, v4

    const-string v3, "UNIFON"

    aput-object v3, v2, v5

    const-string v3, "AR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72234"

    aput-object v3, v2, v4

    const-string v3, "Telecom Personal"

    aput-object v3, v2, v5

    const-string v3, "AR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72235"

    aput-object v3, v2, v4

    const-string v3, "PORT-HABLE"

    aput-object v3, v2, v5

    const-string v3, "AR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72402"

    aput-object v3, v2, v4

    const-string v3, "TIM BRASIL"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72403"

    aput-object v3, v2, v4

    const-string v3, "TIM BRASIL"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72404"

    aput-object v3, v2, v4

    const-string v3, "TIM BRASIL"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72405"

    aput-object v3, v2, v4

    const-string v3, "Claro"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "72416"

    aput-object v3, v2, v4

    const-string v3, "BrTCel"

    aput-object v3, v2, v5

    const-string v3, "BR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73001"

    aput-object v3, v2, v4

    const-string v3, "ENTEL PCS"

    aput-object v3, v2, v5

    const-string v3, "CL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73010"

    aput-object v3, v2, v4

    const-string v3, "ENTEL PCS"

    aput-object v3, v2, v5

    const-string v3, "CL"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73401"

    aput-object v3, v2, v4

    const-string v3, "INFONET"

    aput-object v3, v2, v5

    const-string v3, "VE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73402"

    aput-object v3, v2, v4

    const-string v3, "DIGITEL"

    aput-object v3, v2, v5

    const-string v3, "VE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73601"

    aput-object v3, v2, v4

    const-string v3, "NUEVATEL"

    aput-object v3, v2, v5

    const-string v3, "BO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "73602"

    aput-object v3, v2, v4

    const-string v3, "ENTEL"

    aput-object v3, v2, v5

    const-string v3, "BO"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "74401"

    aput-object v3, v2, v4

    const-string v3, "VOX"

    aput-object v3, v2, v5

    const-string v3, "PY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "74402"

    aput-object v3, v2, v4

    const-string v3, "PY 02"

    aput-object v3, v2, v5

    const-string v3, "PY"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "74601"

    aput-object v3, v2, v4

    const-string v3, "ICMS"

    aput-object v3, v2, v5

    const-string v3, "SR"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "90105"

    aput-object v3, v2, v4

    const-string v3, "Thuraya"

    aput-object v3, v2, v5

    const-string v3, "UNKNOWN_COUNTRY_CODE"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->OPERATOR:[[Ljava/lang/String;

    .line 527
    const/16 v0, 0xcf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CN"

    aput-object v2, v1, v4

    const-string v2, "+8"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "US"

    aput-object v2, v1, v4

    const-string v2, "-4"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "US"

    aput-object v2, v1, v4

    const-string v2, "-5"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "US"

    aput-object v2, v1, v4

    const-string v2, "-6"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "US"

    aput-object v2, v1, v4

    const-string v2, "-7"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "US"

    aput-object v3, v2, v4

    const-string v3, "-8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "US"

    aput-object v3, v2, v4

    const-string v3, "-9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "US"

    aput-object v3, v2, v4

    const-string v3, "-10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AO"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AF"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AL"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DZ"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AD"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AI"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AG"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AR"

    aput-object v3, v2, v4

    const-string v3, "-3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AM"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+9.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+10.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AU"

    aput-object v3, v2, v4

    const-string v3, "+11"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AT"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AZ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BS"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BH"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BD"

    aput-object v3, v2, v4

    const-string v3, "+6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BB"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BY"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BE"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BE"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BZ"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BJ"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BM"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BO"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BW"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BR"

    aput-object v3, v2, v4

    const-string v3, "-3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BN"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BG"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BF"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BI"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CM"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CA"

    aput-object v3, v2, v4

    const-string v3, "-3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CF"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TD"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CL"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CO"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CG"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CR"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CU"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CY"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CZ"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DK"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DK"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DJ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DO"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EC"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EG"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SV"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "EE"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ET"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FJ"

    aput-object v3, v2, v4

    const-string v3, "+12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FI"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "FR"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GF"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GA"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GM"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GM"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GM"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GE"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DE"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "DE"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GH"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GI"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GR"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GD"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GU"

    aput-object v3, v2, v4

    const-string v3, "+10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GT"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GN"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GY"

    aput-object v3, v2, v4

    const-string v3, "-3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HT"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HN"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HK"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IS"

    aput-object v3, v2, v4

    const-string v3, "-1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IQ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IL"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IT"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IT"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JM"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JP"

    aput-object v3, v2, v4

    const-string v3, "+9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "JO"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KH"

    aput-object v3, v2, v4

    const-string v3, "-7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KZ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KE"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KR"

    aput-object v3, v2, v4

    const-string v3, "+9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KW"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KG"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LA"

    aput-object v3, v2, v4

    const-string v3, "+7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LV"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LB"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LS"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LR"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LY"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LI"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LT"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LU"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MG"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MW"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MV"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ML"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MT"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MU"

    aput-object v3, v2, v4

    const-string v3, "+4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MX"

    aput-object v3, v2, v4

    const-string v3, "-7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MD"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MC"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MN"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MS"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MA"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MZ"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NA"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NR"

    aput-object v3, v2, v4

    const-string v3, "+12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NL"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NZ"

    aput-object v3, v2, v4

    const-string v3, "+12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NZ"

    aput-object v3, v2, v4

    const-string v3, "+13"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NI"

    aput-object v3, v2, v4

    const-string v3, "-6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NE"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NG"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KP"

    aput-object v3, v2, v4

    const-string v3, "+9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NO"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OM"

    aput-object v3, v2, v4

    const-string v3, "+4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PA"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PG"

    aput-object v3, v2, v4

    const-string v3, "+10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PY"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PE"

    aput-object v3, v2, v4

    const-string v3, "-5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PH"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PL"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PF"

    aput-object v3, v2, v4

    const-string v3, "+11"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PT"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PR"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "QA"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RO"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RU"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LC"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VC"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SM"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ST"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SA"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SN"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SC"

    aput-object v3, v2, v4

    const-string v3, "+4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SL"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SK"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SI"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SB"

    aput-object v3, v2, v4

    const-string v3, "+11"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SO"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZA"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ES"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LK"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SD"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SZ"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SE"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CH"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SY"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TW"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TJ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TZ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TH"

    aput-object v3, v2, v4

    const-string v3, "+7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TG"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TO"

    aput-object v3, v2, v4

    const-string v3, "+12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TT"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TN"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TR"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TM"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UG"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UA"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "AE"

    aput-object v3, v2, v4

    const-string v3, "+4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GB"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UZ"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VN"

    aput-object v3, v2, v4

    const-string v3, "+7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YE"

    aput-object v3, v2, v4

    const-string v3, "+3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZW"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZR"

    aput-object v3, v2, v4

    const-string v3, "+1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZM"

    aput-object v3, v2, v4

    const-string v3, "+2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SG"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MM"

    aput-object v3, v2, v4

    const-string v3, "+7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CK"

    aput-object v3, v2, v4

    const-string v3, "-10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IN"

    aput-object v3, v2, v4

    const-string v3, "+5.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ID"

    aput-object v3, v2, v4

    const-string v3, "+8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IR"

    aput-object v3, v2, v4

    const-string v3, "+3.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "IE"

    aput-object v3, v2, v4

    const-string v3, "+3.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MY"

    aput-object v3, v2, v4

    const-string v3, "+7.5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "NP"

    aput-object v3, v2, v4

    const-string v3, "+6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PK"

    aput-object v3, v2, v4

    const-string v3, "+6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SR"

    aput-object v3, v2, v4

    const-string v3, "-3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UY"

    aput-object v3, v2, v4

    const-string v3, "-2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VE"

    aput-object v3, v2, v4

    const-string v3, "-4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->COUNTRY_TO_TIMEZONE:[[Ljava/lang/String;

    return-void
.end method

.method public static getTimeZoneIdByCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "country"

    .prologue
    .line 805
    if-eqz p0, :cond_1

    .line 807
    sget-object v0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->COUNTRY_TO_TIMEZONE_ID:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 809
    .local v3, list:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const/4 v4, 0x1

    aget-object v4, v3, v4

    .line 815
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 807
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #list:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCountryNameByNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 752
    if-eqz p1, :cond_1

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->OPERATOR:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 756
    .local v3, list:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 758
    const/4 v4, 0x2

    aget-object v4, v3, v4

    .line 762
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 754
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #list:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 762
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getGMTOffsetByCountryName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "country"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v4, resultlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->COUNTRY_TO_TIMEZONE:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 772
    .local v3, list:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public getOpeartors()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->OPERATOR:[[Ljava/lang/String;

    return-object v0
.end method

.method public isTimeZoneRight(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "country"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 783
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/OperatorNumberToId;->COUNTRY_TO_TIMEZONE:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 787
    .local v3, list:[Ljava/lang/String;
    aget-object v6, v3, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 789
    aget-object v6, v3, v4

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 800
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #list:[Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 785
    .restart local v0       #arr$:[[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #list:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #list:[Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 800
    goto :goto_1
.end method
