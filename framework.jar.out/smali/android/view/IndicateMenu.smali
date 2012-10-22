.class public interface abstract Landroid/view/IndicateMenu;
.super Ljava/lang/Object;
.source "IndicateMenu.java"


# static fields
.field public static final FLAG_ALWAYS_PERFORM_CLOSE:I = 0x2

.field public static final FLAG_CLEAR_WHEN_CLOSE:I = 0x4

.field public static final FLAG_PERFORM_NO_CLOSE:I = 0x1

.field public static final NONE:I


# virtual methods
.method public abstract add(III)Landroid/view/IndicateMenuItem;
.end method

.method public abstract add(IILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
.end method

.method public abstract add(ILjava/lang/CharSequence;)Landroid/view/IndicateMenuItem;
.end method

.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract findItem(I)Landroid/view/IndicateMenuItem;
.end method

.method public abstract getItem(I)Landroid/view/IndicateMenuItem;
.end method

.method public abstract hasVisibleItems()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract open()V
.end method

.method public abstract remove(I)V
.end method

.method public abstract size()I
.end method
