.class public Lcom/ts/bt/Cn2Spell;
.super Ljava/lang/Object;
.source "Cn2Spell.java"


# static fields
.field public static sb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "chines"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 59
    sget-object v3, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 64
    .local v2, "nameChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 75
    sget-object v3, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    :cond_0
    aget-char v3, v2, v1

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 67
    :try_start_0
    sget-object v3, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    aget-char v4, v2, v1

    invoke-static {v4}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    aget-char v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getPinYinFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 44
    sget-object v2, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 45
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 46
    .local v0, "c":C
    invoke-static {v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "pinyinArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    sget-object v2, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    aget-object v3, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :goto_0
    sget-object v2, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 50
    :cond_0
    sget-object v2, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "chines"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 21
    sget-object v4, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 23
    .local v0, "chars":[C
    new-instance v1, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v1}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 24
    .local v1, "defaultFormat":Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v4, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    invoke-virtual {v1, v4}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    .line 25
    sget-object v4, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    invoke-virtual {v1, v4}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 26
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 37
    sget-object v4, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 27
    :cond_0
    aget-char v4, v0, v3

    const/16 v5, 0x80

    if-le v4, v5, :cond_1

    .line 29
    :try_start_0
    sget-object v4, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    aget-char v5, v0, v3

    invoke-static {v5, v1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 34
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Lcom/ts/bt/Cn2Spell;->sb:Ljava/lang/StringBuffer;

    aget-char v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
