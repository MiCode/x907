.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$OppoFlingRunnable;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field public static final DEFAUL_MODE:I = 0x1

.field public static final FIRST_VIEW:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field public static final LAST_VIEW:I = 0x3

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field public static final LONGSTAND_MODE:I = 0x2

.field public static final MID_VIEW:I = 0x2

.field public static final NONE_BACKGROUND:I = 0x0

.field public static final ONLY_ONE_CHILD_VIEW:I = 0x4

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field public static final SHADE_MODE:I = 0x3

.field static final SPRING_DISTANCE_MAX:I = 0x64

.field static final SPRING_SPEED_MAX:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field private static final TIMEOUT:J = 0x190L

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x9

.field static final TOUCH_MODE_OVERSCROLL:I = 0x8

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_SNAP:I = 0x6

.field static final TOUCH_MODE_SPRING:I = 0x7

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private isDraw:Z

.field private isNotTouchDraw:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundID:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearPaint:Landroid/graphics/Paint;

.field private mClearRect:Landroid/graphics/Rect;

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mDrawingFlag:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFantasticScrollMode:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field mIsAttached:Z

.field private mIsBuilDrawCache:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field protected mItemDrawable:Landroid/graphics/drawable/Drawable;

.field protected mItemID:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastMotionPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTime:J

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mOnClickFlag:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private mSavePaddingBottom:I

.field private mSavePaddingLeft:I

.field private mSavePaddingRight:I

.field private mSavePaddingTop:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSelectView:Landroid/view/View;

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mSpringEnabled:Z

.field mStackFromBottom:Z

.field private mTempBitmap:Landroid/graphics/Bitmap;

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field protected mTransFlag:Z

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field mTouchPaddingLeft:I

.field mTouchPaddingRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 826
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 244
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 277
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 297
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 302
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 312
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 317
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 323
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 328
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 333
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 338
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 343
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 348
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 353
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 401
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 439
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 482
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 500
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsBuilDrawCache:Z

    .line 501
    iput v3, p0, Landroid/widget/AbsListView;->mLastMotionPosition:I

    .line 502
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawingFlag:Z

    .line 503
    iput-boolean v3, p0, Landroid/widget/AbsListView;->isDraw:Z

    .line 504
    iput-boolean v3, p0, Landroid/widget/AbsListView;->isNotTouchDraw:Z

    .line 517
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mOnClickFlag:Z

    .line 519
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/AbsListView;->mLastTime:J

    .line 523
    iput v3, p0, Landroid/widget/AbsListView;->mItemID:I

    .line 538
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mTransFlag:Z

    .line 559
    iput v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 561
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    .line 565
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mClearPaint:Landroid/graphics/Paint;

    .line 592
    iput v4, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 595
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 598
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 606
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 607
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 654
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 672
    const/high16 v1, 0x3f80

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 674
    new-array v1, v5, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 684
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 732
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 827
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 829
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 830
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 831
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 832
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 833
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 836
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 837
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 840
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 277
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 297
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 302
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 312
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 317
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 323
    new-instance v10, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v10, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 328
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 333
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 338
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 343
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 348
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 353
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 401
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 439
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 482
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 500
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsBuilDrawCache:Z

    .line 501
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mLastMotionPosition:I

    .line 502
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDrawingFlag:Z

    .line 503
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->isDraw:Z

    .line 504
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->isNotTouchDraw:Z

    .line 517
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mOnClickFlag:Z

    .line 519
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/widget/AbsListView;->mLastTime:J

    .line 523
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mItemID:I

    .line 538
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mTransFlag:Z

    .line 559
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 561
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 564
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    .line 565
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mClearPaint:Landroid/graphics/Paint;

    .line 592
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 595
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 598
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 606
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 607
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 654
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 672
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 674
    const/4 v10, 0x1

    new-array v10, v10, [Z

    iput-object v10, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 684
    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 732
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 841
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 843
    sget-object v10, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v11, 0x0

    invoke-virtual {p1, p2, v10, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 846
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 847
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 851
    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 854
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 855
    .local v7, stackFromBottom:Z
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 857
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 858
    .local v5, scrollingCacheEnabled:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 860
    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 861
    .local v9, useTextFilter:Z
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 863
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 865
    .local v8, transcriptMode:I
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 867
    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 868
    .local v1, color:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 870
    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 871
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 873
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 874
    .local v6, smoothScrollbar:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 877
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    .line 878
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 879
    .local v4, enableSpring:Z
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v10, :cond_1

    .line 880
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setSpringEnabled(Z)V

    .line 882
    :cond_1
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v10

    if-nez v10, :cond_3

    .line 884
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    .line 888
    :cond_3
    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 889
    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 892
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 893
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$2500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$6200(Landroid/widget/AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$6400(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$702(Landroid/widget/AbsListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawingFlag:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$7200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$7300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$7400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$802(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7035
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 7053
    :cond_0
    return v2

    .line 7036
    :cond_1
    const/4 v2, 0x1

    .line 7038
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7039
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7040
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7041
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7042
    const/4 v2, 0x0

    .line 7043
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 7047
    const/4 v2, 0x0

    .line 7048
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7039
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5790
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5791
    new-instance v0, Landroid/widget/AbsListView$3;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5806
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5807
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1255
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1256
    .local v0, childCount:I
    if-nez v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return v1

    .line 1257
    :cond_1
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 1259
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5782
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 5783
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5784
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5785
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 5787
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 8
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 6776
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 6777
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6778
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6779
    .local v2, p:Landroid/widget/PopupWindow;
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 6781
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x109010a

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6786
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6788
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6789
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6790
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6791
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6792
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6793
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6794
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6795
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6796
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6797
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6798
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6799
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6801
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6802
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6806
    :goto_0
    return-void

    .line 6804
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6541
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6542
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6544
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7057
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7058
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7059
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7061
    :cond_0
    return-void
.end method

.method private getClipBitmap()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2445
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsBuilDrawCache:Z

    if-nez v7, :cond_3

    .line 2446
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsBuilDrawCache:Z

    .line 2447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->buildDrawingCache()V

    .line 2449
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2450
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2451
    .local v2, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    .line 2453
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2454
    .local v3, w:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2455
    .local v1, h:I
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_4

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->left:I

    .line 2456
    .local v4, x:I
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ltz v7, :cond_5

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v5, v6, Landroid/graphics/Rect;->top:I

    .line 2458
    .local v5, y:I
    :goto_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_6

    .line 2459
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v3, v6, v7

    .line 2464
    :cond_0
    :goto_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_7

    .line 2465
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, v7

    .line 2470
    :cond_1
    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #rect:Landroid/graphics/Rect;
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2472
    .restart local v2       #rect:Landroid/graphics/Rect;
    if-lez v3, :cond_8

    if-lez v1, :cond_8

    add-int v6, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_8

    add-int v6, v5, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_8

    .line 2473
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearItemBackground()V

    .line 2474
    invoke-static {v0, v4, v5, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsListView;->mTempBitmap:Landroid/graphics/Bitmap;

    .line 2480
    .end local v1           #h:I
    .end local v3           #w:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_2
    :goto_4
    iget-object v6, p0, Landroid/widget/AbsListView;->mTempBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 2481
    iget-object v6, p0, Landroid/widget/AbsListView;->mTempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, v6}, Landroid/widget/AbsListView;->saveSelector(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    .line 2484
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_3
    return-void

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #h:I
    .restart local v2       #rect:Landroid/graphics/Rect;
    .restart local v3       #w:I
    :cond_4
    move v4, v6

    .line 2455
    goto :goto_0

    .restart local v4       #x:I
    :cond_5
    move v5, v6

    .line 2456
    goto :goto_1

    .line 2460
    .restart local v5       #y:I
    :cond_6
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_0

    .line 2461
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v7

    goto :goto_2

    .line 2466
    :cond_7
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_1

    .line 2467
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v1, v6, v7

    goto :goto_3

    .line 2476
    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsListView;->mTempBitmap:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method private static getDeg2(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 5811
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5812
    .local v0, temp:I
    shr-int/lit8 v0, v0, 0x1

    .line 5813
    if-lez p0, :cond_0

    .end local v0           #temp:I
    :goto_0
    return v0

    .restart local v0       #temp:I
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 6587
    sparse-switch p2, :sswitch_data_0

    .line 6620
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6589
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6590
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6591
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6592
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6624
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 6625
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 6626
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6595
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6596
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6597
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6598
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 6599
    .restart local v1       #dY:I
    goto :goto_0

    .line 6601
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6602
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6603
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6604
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6605
    .restart local v1       #dY:I
    goto :goto_0

    .line 6607
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6608
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6609
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6610
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 6611
    .restart local v1       #dY:I
    goto :goto_0

    .line 6614
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6615
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6616
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6617
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6618
    .restart local v1       #dY:I
    goto :goto_0

    .line 6587
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getStateByPosition(I)I
    .locals 3
    .parameter "motionPosition"

    .prologue
    const/4 v1, 0x1

    .line 7675
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 7676
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getState(I)I

    move-result v0

    .line 7687
    :cond_0
    :goto_0
    return v0

    .line 7679
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 7680
    goto :goto_0

    .line 7683
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getHighLight(Landroid/view/View;)I

    move-result v0

    .line 7684
    .local v0, tag:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_3

    if-ne v1, v0, :cond_0

    .line 7685
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getState(I)I

    move-result v0

    goto :goto_0
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 897
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 898
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 899
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 900
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 901
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 903
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 907
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 908
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 909
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 912
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v1, :cond_1

    .line 915
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getListScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 924
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 925
    return-void

    .line 918
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 919
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 920
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4526
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4527
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4531
    :goto_0
    return-void

    .line 4529
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4534
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4535
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4537
    :cond_0
    return-void
.end method

.method private isSeekBar(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 7729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 7741
    :cond_0
    :goto_0
    return v0

    .line 7730
    :cond_1
    const/4 v0, 0x0

    .line 7731
    .local v0, isSeekBar:Z
    const/4 v1, 0x0

    .line 7733
    .local v1, seekBar:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 7734
    invoke-virtual {p1}, Landroid/view/View;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 7737
    :cond_2
    if-eqz v1, :cond_0

    .line 7738
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isShouldHandleEvent()Z
    .locals 3

    .prologue
    .line 7748
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7749
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 7750
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 4664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4666
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4667
    .local v1, pointerId:I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_1

    .line 4671
    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 4672
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4673
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4674
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v4, :cond_0

    .line 4675
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4677
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4679
    .end local v0           #newPointerIndex:I
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 4671
    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6560
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6561
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6562
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6565
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6566
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6567
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6572
    :goto_0
    return-void

    .line 6570
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2328
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2332
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v0, :cond_0

    .line 2333
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsBuilDrawCache:Z

    .line 2336
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 4540
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4541
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4542
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4544
    :cond_0
    return-void
.end method

.method private resizeSelectorBound(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "selectPostion"
    .parameter "selectorRect"

    .prologue
    .line 2340
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2344
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 2351
    :cond_0
    :goto_0
    return-void

    .line 2346
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2348
    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 7627
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7628
    .local v1, size:I
    if-lez v1, :cond_2

    .line 7630
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7631
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7632
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_0

    .line 7634
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7640
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1
    return-object v2

    .line 7630
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7638
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1

    .line 7640
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 30
    .parameter "y"

    .prologue
    .line 3286
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3287
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3288
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3290
    .local v18, incrementalDeltaY:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 3298
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_0

    .line 3300
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3303
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3307
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_1

    .line 3309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3310
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_1

    .line 3311
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3316
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 3317
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3324
    .local v19, motionIndex:I
    :goto_1
    const/16 v22, 0x0

    .line 3325
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3326
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_2

    .line 3327
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3331
    :cond_2
    const/16 v16, 0x0

    .line 3332
    .local v16, atEdge:Z
    if-eqz v18, :cond_3

    .line 3333
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3337
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3338
    if-eqz v21, :cond_7

    .line 3341
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3342
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_6

    .line 3345
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3347
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3349
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3351
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_4

    .line 3352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3356
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v27

    .line 3357
    .local v27, overscrollMode:I
    if-eqz v27, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3360
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3361
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3362
    if-lez v29, :cond_b

    .line 3363
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3364
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3375
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3376
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3378
    .end local v23           #motionViewRealTop:I
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3446
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_8
    :goto_3
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_9
    move/from16 v18, v17

    .line 3288
    goto/16 :goto_0

    .line 3321
    .restart local v18       #incrementalDeltaY:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_1

    .line 3367
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_b
    if-gez v29, :cond_6

    .line 3368
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3369
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3370
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2

    .line 3380
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    .line 3381
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 3382
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    .line 3383
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3384
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_15

    const/16 v24, 0x1

    .line 3386
    .local v24, newDirection:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_d

    .line 3387
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3390
    :cond_d
    move/from16 v0, v18

    neg-int v8, v0

    .line 3391
    .local v8, overScrollDistance:I
    if-gez v25, :cond_e

    if-gez v26, :cond_f

    :cond_e
    if-lez v25, :cond_16

    if-gtz v26, :cond_16

    .line 3392
    :cond_f
    move/from16 v0, v26

    neg-int v8, v0

    .line 3393
    add-int v18, v18, v8

    .line 3398
    :goto_5
    if-eqz v8, :cond_12

    .line 3399
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v27

    .line 3402
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_10

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3405
    :cond_10
    if-lez v29, :cond_17

    .line 3406
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3408
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3416
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3420
    .end local v27           #overscrollMode:I
    :cond_12
    if-eqz v18, :cond_14

    .line 3422
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollY:I

    .line 3423
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3426
    if-eqz v18, :cond_13

    .line 3427
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3430
    :cond_13
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3434
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3436
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3437
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3438
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_7
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3439
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3440
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3442
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3443
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3384
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_15
    const/16 v24, -0x1

    goto/16 :goto_4

    .line 3395
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 3410
    .restart local v27       #overscrollMode:I
    :cond_17
    if-gez v29, :cond_11

    .line 3411
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3412
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3413
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 3438
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_18
    const/4 v3, 0x0

    goto :goto_7
.end method

.method public static setHighLight(Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "contentValues"
    .parameter "highLight"

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string v0, "highLight"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static setPositionInfo(Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "contentValues"
    .parameter "positionInfo"

    .prologue
    .line 542
    if-nez p0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    const-string/jumbo v0, "positionInfo"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6551
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6553
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6555
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6557
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 10
    .parameter "y"

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3217
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p1, v8

    .line 3220
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3221
    .local v1, distance:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-eqz v8, :cond_4

    move v4, v6

    .line 3224
    .local v4, overscroll:Z
    :goto_0
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v8, :cond_7

    .line 3225
    if-nez v4, :cond_0

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v8, :cond_b

    .line 3226
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3227
    if-eqz v4, :cond_5

    .line 3228
    const/16 v8, 0x8

    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3229
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3234
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3238
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_1

    .line 3239
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3241
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3242
    iget v8, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3243
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 3244
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3246
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3249
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3250
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_3

    .line 3251
    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3253
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    .line 3282
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_2
    return v6

    .end local v4           #overscroll:Z
    :cond_4
    move v4, v7

    .line 3221
    goto :goto_0

    .line 3231
    .restart local v4       #overscroll:Z
    :cond_5
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3232
    if-lez v0, :cond_6

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_6
    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v8, v8

    goto :goto_3

    .line 3257
    :cond_7
    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v8, :cond_b

    .line 3258
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3259
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3260
    if-lez v0, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_4
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3261
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3265
    .restart local v2       #handler:Landroid/os/Handler;
    if-eqz v2, :cond_8

    .line 3266
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3268
    :cond_8
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3269
    iget v8, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3270
    .restart local v3       #motionView:Landroid/view/View;
    if-eqz v3, :cond_9

    .line 3271
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3273
    :cond_9
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3276
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 3260
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v8, v8

    goto :goto_4

    :cond_b
    move v6, v7

    .line 3282
    goto :goto_2
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1508
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4686
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4687
    .local v2, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4688
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4690
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 4701
    :cond_0
    return-void

    .line 4694
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4695
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4696
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4697
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4699
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4694
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 6886
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 6848
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 6767
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 6907
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1063
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1066
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1067
    return-void
.end method

.method protected clearItemBackground()V
    .locals 0

    .prologue
    .line 7755
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6812
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6813
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6815
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6816
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6819
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1900
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1901
    .local v1, count:I
    if-lez v1, :cond_5

    .line 1902
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_4

    .line 1903
    mul-int/lit8 v2, v1, 0x64

    .line 1905
    .local v2, extent:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1906
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1907
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1909
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1910
    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 1913
    :cond_0
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1914
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1915
    .local v0, bottom:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1916
    if-lez v3, :cond_1

    .line 1919
    const/4 v4, 0x0

    .line 1920
    .local v4, tmp:I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v7, :cond_3

    .line 1921
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-gez v7, :cond_2

    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1929
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    sub-int v7, v0, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v3

    sub-int/2addr v7, v4

    sub-int/2addr v2, v7

    .line 1943
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #tmp:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_1
    :goto_1
    return v2

    .line 1921
    .restart local v0       #bottom:I
    .restart local v2       #extent:I
    .restart local v3       #height:I
    .restart local v4       #tmp:I
    .restart local v5       #top:I
    .restart local v6       #view:Landroid/view/View;
    :cond_2
    iget v7, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v7

    goto :goto_0

    .line 1923
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 1940
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #tmp:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v7

    .line 1943
    goto :goto_1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1948
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1949
    .local v2, firstPosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1950
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 1951
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 1952
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1953
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1954
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1955
    .local v3, height:I
    if-lez v3, :cond_0

    .line 1956
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1972
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 1961
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1962
    .local v1, count:I
    if-nez v2, :cond_2

    .line 1963
    const/4 v4, 0x0

    .line 1969
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 1964
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 1965
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 1967
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 1978
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1979
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1981
    .local v0, result:I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_0

    .line 1983
    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1989
    :cond_0
    :goto_0
    return v0

    .line 1987
    .end local v0           #result:I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 17

    .prologue
    .line 6339
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6341
    const/4 v7, 0x0

    .line 6342
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 6343
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 6344
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6346
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 6347
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_3

    .line 6349
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 6350
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6351
    .local v9, end:I
    const/4 v10, 0x0

    .line 6352
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_1
    if-ge v15, v9, :cond_0

    .line 6353
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 6354
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_2

    .line 6355
    const/4 v10, 0x1

    .line 6356
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6357
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6362
    .end local v13           #searchId:J
    :cond_0
    if-nez v10, :cond_1

    .line 6363
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6364
    add-int/lit8 v8, v8, -0x1

    .line 6365
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 6366
    const/4 v7, 0x1

    .line 6367
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 6368
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6342
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 6352
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6373
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6377
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_4
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 6378
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 6380
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2913
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7089
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7090
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x3

    const/4 v0, 0x1

    const/4 v12, 0x2

    const/4 v6, 0x0

    .line 2357
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v7, :cond_0

    .line 2358
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDrawingFlag:Z

    .line 2362
    :cond_0
    const/4 v3, 0x0

    .line 2363
    .local v3, saveCount:I
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    const/16 v8, 0x22

    if-ne v7, v8, :cond_9

    .line 2365
    .local v0, clipToPadding:Z
    :goto_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v7, :cond_2

    .line 2369
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1

    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    .line 2371
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 2372
    .local v2, lastBottom:I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    if-gez v7, :cond_a

    .line 2373
    iget-object v7, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2374
    iget-object v6, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/AbsListView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2384
    .end local v2           #lastBottom:I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 2385
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2386
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 2387
    .local v4, scrollX:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 2388
    .local v5, scrollY:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v5

    iget v8, p0, Landroid/view/View;->mRight:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2391
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, -0x23

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2394
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2395
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_4

    .line 2396
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2399
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2401
    if-eqz v1, :cond_5

    .line 2402
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2405
    :cond_5
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v6, :cond_7

    .line 2406
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2407
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2408
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v6, :cond_6

    .line 2409
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-ne v12, v6, :cond_6

    .line 2415
    :cond_6
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v6, :cond_7

    .line 2416
    iget-boolean v6, p0, Landroid/widget/AbsListView;->isNotTouchDraw:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-ne v12, v6, :cond_7

    .line 2436
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 2437
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2438
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v6, v6, 0x22

    iput v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2440
    :cond_8
    return-void

    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_9
    move v0, v6

    .line 2363
    goto/16 :goto_0

    .line 2376
    .restart local v0       #clipToPadding:Z
    .restart local v2       #lastBottom:I
    :cond_a
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    if-le v7, v8, :cond_2

    .line 2377
    iget-object v7, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2379
    iget-object v6, p0, Landroid/widget/AbsListView;->mClearRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/AbsListView;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 2421
    .end local v2           #lastBottom:I
    .restart local v1       #drawSelectorOnTop:Z
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 2422
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-eq v12, v6, :cond_c

    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-ne v13, v6, :cond_c

    .line 2428
    :cond_c
    iget-boolean v6, p0, Landroid/widget/AbsListView;->isDraw:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-eq v12, v6, :cond_7

    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->getStateByPosition(I)I

    move-result v6

    if-ne v13, v6, :cond_7

    goto :goto_2
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3112
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 4461
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v6, :cond_1

    .line 4462
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4463
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v6, :cond_0

    .line 4464
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 4515
    :cond_0
    :goto_0
    return-void

    .line 4467
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4468
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_5

    .line 4469
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 4470
    .local v4, scrollY:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4472
    .local v2, restoreCount:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4473
    .local v1, leftPadding:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4474
    .local v3, rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4476
    .local v5, width:I
    int-to-float v6, v1

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4478
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4479
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4480
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4482
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4484
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v5           #width:I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4485
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4486
    .restart local v2       #restoreCount:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    add-int v1, v6, v7

    .line 4487
    .restart local v1       #leftPadding:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    add-int v3, v6, v7

    .line 4488
    .restart local v3       #rightPadding:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v3

    .line 4489
    .restart local v5       #width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .line 4491
    .local v0, height:I
    neg-int v6, v5

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4493
    const/high16 v6, 0x4334

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4494
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4495
    iget-object v6, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4496
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4498
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4501
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v2           #restoreCount:I
    .end local v3           #rightPadding:I
    .end local v4           #scrollY:I
    .end local v5           #width:I
    :cond_5
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v6, :cond_0

    .line 4502
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 4503
    .restart local v4       #scrollY:I
    if-eqz v4, :cond_6

    .line 4505
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4506
    .restart local v2       #restoreCount:I
    int-to-float v6, v4

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4507
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 4508
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 4510
    .end local v2           #restoreCount:I
    :cond_6
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 2560
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2561
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2562
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2563
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2565
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawSelectorBitmap(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 7697
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2692
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2693
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2694
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 6181
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6182
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 6187
    :cond_0
    :goto_0
    return v1

    .line 6186
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 6187
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 6897
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 6902
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2011
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2012
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2013
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 2023
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 2016
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2017
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 2020
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2021
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2022
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2023
    .local v3, fadeLength:F
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2508
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6968
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 977
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1041
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1042
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1053
    :cond_1
    return-object v3

    .line 1045
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1046
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1047
    .local v0, count:I
    new-array v3, v0, [J

    .line 1049
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1050
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1009
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1010
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1013
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1495
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1496
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1499
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1500
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1505
    :goto_0
    return-void

    .line 1503
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6124
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6114
    const/4 v0, 0x0

    return v0
.end method

.method protected getHighLight(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 552
    const/4 v0, -0x1

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2493
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2191
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2155
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2503
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2139
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2140
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionBottomPadding()I
    .locals 1

    .prologue
    .line 7237
    iget v0, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    return v0
.end method

.method public getSelectionLeftPadding()I
    .locals 1

    .prologue
    .line 7225
    iget v0, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    return v0
.end method

.method public getSelectionRightPadding()I
    .locals 1

    .prologue
    .line 7233
    iget v0, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    return v0
.end method

.method public getSelectionTopPadding()I
    .locals 1

    .prologue
    .line 7229
    iget v0, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    return v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSelectorRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 7648
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6936
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getState(I)I
    .locals 1
    .parameter "motionPosition"

    .prologue
    .line 7670
    const/4 v0, 0x1

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1855
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1994
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1995
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1996
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 2005
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 1999
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2000
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 2003
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2004
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2005
    .local v2, fadeLength:F
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2498
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6931
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1323
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1326
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6384
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6385
    .local v1, count:I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6386
    .local v4, lastHandledItemCount:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6388
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6389
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6392
    :cond_0
    if-lez v1, :cond_e

    .line 6397
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 6399
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 6401
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 6402
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6517
    :cond_1
    :goto_0
    return-void

    .line 6404
    :cond_2
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 6405
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 6406
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 6407
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 6410
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6411
    .local v0, childCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 6412
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6413
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6414
    .local v2, lastBottom:I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    .line 6416
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2           #lastBottom:I
    :cond_4
    move v2, v5

    .line 6413
    goto :goto_1

    .line 6421
    .restart local v2       #lastBottom:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6424
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_6
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6472
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 6474
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6477
    .local v6, newPos:I
    if-lt v6, v1, :cond_8

    .line 6478
    add-int/lit8 v6, v1, -0x1

    .line 6480
    :cond_8
    if-gez v6, :cond_9

    .line 6481
    const/4 v6, 0x0

    .line 6485
    :cond_9
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6487
    .local v7, selectablePos:I
    if-ltz v7, :cond_c

    .line 6488
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 6426
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 6431
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6432
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto :goto_0

    .line 6438
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 6439
    .restart local v6       #newPos:I
    if-ltz v6, :cond_7

    .line 6441
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6442
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_7

    .line 6444
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 6446
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 6449
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6457
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6453
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_2

    .line 6465
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_1
    iput v14, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6466
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    goto/16 :goto_0

    .line 6492
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_c
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6493
    if-ltz v7, :cond_e

    .line 6494
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 6501
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_d
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_1

    .line 6509
    :cond_e
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6510
    iput v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6511
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 6512
    iput v13, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 6513
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 6514
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 6515
    iput v13, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6516
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    .line 6509
    goto :goto_3

    .line 6424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6825
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 6138
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6139
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6140
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6142
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6143
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6145
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6146
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6147
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6149
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 6195
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 6196
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6197
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6198
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1404
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1407
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1410
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1411
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1336
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isFillDivider()Z
    .locals 1

    .prologue
    .line 7762
    const/4 v0, 0x0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6631
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 992
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 996
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2488
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1443
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isShouldHandleEvent(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 7709
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 7724
    :cond_0
    :goto_0
    return v0

    .line 7711
    :cond_1
    const/4 v0, 0x1

    .line 7712
    .local v0, shouldHandleEvent:Z
    const/4 v1, 0x0

    .line 7713
    .local v1, toggle:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 7714
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 7717
    :cond_2
    if-eqz v1, :cond_0

    .line 7718
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oppo.widget.OppoToggle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.OppoToggle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7720
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1387
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 1587
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1520
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1490
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2737
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2738
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2739
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return-void

    .line 2630
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2631
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2632
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2635
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v6, :cond_3

    .line 2636
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsListView;->isNotTouchDraw:Z

    .line 2640
    :cond_3
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2642
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_4

    .line 2643
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2645
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v6, :cond_7

    .line 2646
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v4

    .line 2647
    .local v4, shouldHandleEvent:Z
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2653
    .end local v4           #shouldHandleEvent:Z
    :cond_4
    :goto_1
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2655
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2656
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2657
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    instance-of v6, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_5

    .line 2658
    if-eqz v1, :cond_8

    .line 2659
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2665
    :cond_5
    :goto_2
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 2666
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v6, :cond_6

    .line 2667
    new-instance v6, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2669
    :cond_6
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2670
    iget-object v6, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2649
    .end local v1           #longClickable:Z
    :cond_7
    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 2662
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #longClickable:Z
    :cond_8
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2100
    return-void
.end method

.method protected obtainView(I[Z)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2208
    aput-boolean v6, p2, v6

    .line 2211
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 2214
    .local v3, scrapView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 2220
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2227
    .local v0, child:Landroid/view/View;
    if-eq v0, v3, :cond_4

    .line 2228
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2229
    iget v7, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_0

    .line 2230
    iget v7, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2253
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2254
    .local v2, flag:Z
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v7

    if-eq v7, v9, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v7, :cond_3

    .line 2255
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mTransFlag:Z

    if-nez v7, :cond_2

    .line 2256
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2257
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    iget-object v7, p0, Landroid/widget/AbsListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, v7, :cond_7

    .line 2258
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2259
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v4

    .line 2261
    .local v4, shouldHandleEvent:Z
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v4, :cond_6

    .line 2262
    const/4 v2, 0x1

    .line 2271
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #shouldHandleEvent:Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v7

    if-eq v7, v9, :cond_8

    :goto_2
    invoke-virtual {v0, v5, v2}, Landroid/view/View;->setListSpring(ZZ)V

    .line 2274
    :cond_3
    return-object v0

    .line 2237
    .end local v2           #flag:Z
    :cond_4
    aput-boolean v5, p2, v6

    .line 2238
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0

    .line 2241
    .end local v0           #child:Landroid/view/View;
    :cond_5
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2242
    .restart local v0       #child:Landroid/view/View;
    iget v7, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_0

    .line 2243
    iget v7, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0

    .line 2264
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #flag:Z
    .restart local v4       #shouldHandleEvent:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2267
    .end local v4           #shouldHandleEvent:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    move v5, v6

    .line 2271
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2743
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 2745
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2746
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2747
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 2748
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2751
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2752
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2753
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2756
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2757
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2758
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2760
    :cond_1
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    .line 2761
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 10
    .parameter "consistency"

    .prologue
    .line 7004
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 7006
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 7008
    .local v1, checkLayout:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 7010
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$6600(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 7011
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 7012
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 7013
    aget-object v7, v0, v3

    if-eqz v7, :cond_0

    .line 7014
    const/4 v4, 0x0

    .line 7015
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7006
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7022
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$6700(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 7023
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    .line 7024
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$6800(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 7025
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 7026
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    .line 7027
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x0

    .line 7026
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7031
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 2699
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 2701
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2727
    :cond_0
    :goto_0
    return-object v3

    .line 2707
    :cond_1
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2712
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2713
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2714
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 2715
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2716
    move v0, v2

    .line 2722
    :cond_2
    if-ltz v0, :cond_0

    .line 2723
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2714
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 6712
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6716
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6717
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6718
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6719
    new-instance v0, Landroid/widget/AbsListView$4;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6753
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6755
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6756
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6758
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2765
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2768
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2771
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 2773
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2774
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2775
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 2776
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2777
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2780
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2781
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2782
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2785
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 2786
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2787
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2790
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 2791
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2792
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2795
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 2796
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2799
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 2800
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2803
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2804
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2807
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 2808
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2811
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 2812
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2813
    iput-object v3, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2815
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    .line 2818
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v1, :cond_9

    .line 2819
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearItemBackground()V

    .line 2822
    :cond_9
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 6521
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6522
    sparse-switch p1, :sswitch_data_0

    .line 6534
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6535
    return-void

    .line 6524
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6525
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 6529
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6530
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6534
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 6889
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6890
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6891
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6893
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1860
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1861
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1866
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 1867
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1869
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 1871
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 4440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 4441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4455
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 4443
    :pswitch_0
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4444
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 4445
    .local v1, vscroll:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 4446
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 4447
    .local v0, delta:I
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4448
    const/4 v2, 0x1

    goto :goto_0

    .line 4441
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6829
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6831
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6832
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6841
    :cond_0
    :goto_0
    return-void

    .line 6836
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6837
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/high16 v13, -0x8000

    const/4 v12, -0x1

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4559
    .local v0, action:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v10, :cond_0

    .line 4560
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4561
    .local v1, intercepted:Z
    if-eqz v1, :cond_0

    .line 4660
    .end local v1           #intercepted:Z
    :goto_0
    return v8

    .line 4566
    :cond_0
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v8, v9

    .line 4660
    goto :goto_0

    .line 4569
    :pswitch_1
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v10, :cond_5

    .line 4570
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4571
    .local v4, touchMode:I
    const/16 v10, 0x9

    if-eq v4, v10, :cond_2

    const/16 v10, 0x8

    if-ne v4, v10, :cond_3

    .line 4572
    :cond_2
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 4576
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 4577
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 4578
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4580
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 4581
    .local v2, motionPosition:I
    if-eq v4, v11, :cond_4

    if-ltz v2, :cond_4

    .line 4584
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4585
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4586
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4587
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4588
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4589
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4590
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4592
    .end local v5           #v:Landroid/view/View;
    :cond_4
    iput v13, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4593
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4594
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4595
    if-ne v4, v11, :cond_1

    goto :goto_0

    .line 4599
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_5
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4600
    .restart local v4       #touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 4601
    .restart local v6       #x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 4603
    .restart local v7       #y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4605
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 4606
    .restart local v2       #motionPosition:I
    if-eq v4, v11, :cond_6

    if-ltz v2, :cond_6

    const/4 v10, 0x7

    if-eq v4, v10, :cond_6

    .line 4609
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4610
    .restart local v5       #v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4611
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4612
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4613
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4614
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4615
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4617
    .end local v5           #v:Landroid/view/View;
    :cond_6
    iput v13, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4618
    if-ne v4, v11, :cond_1

    goto/16 :goto_0

    .line 4627
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_2
    iget v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_1

    .line 4629
    :pswitch_3
    iget v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 4630
    .local v3, pointerIndex:I
    if-ne v3, v12, :cond_7

    .line 4631
    const/4 v3, 0x0

    .line 4632
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4634
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4635
    .restart local v7       #y:I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4636
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4637
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_0

    .line 4647
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_4
    iput v12, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4648
    iput v12, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4649
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4650
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1

    .line 4655
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 4566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4627
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3074
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 3079
    sparse-switch p1, :sswitch_data_0

    .line 3105
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 3082
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3085
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3090
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v2, :cond_2

    .line 3091
    iput-boolean v1, p0, Landroid/widget/AbsListView;->isNotTouchDraw:Z

    .line 3095
    :cond_2
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3096
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 3097
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3098
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 3100
    :cond_3
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    goto :goto_0

    .line 3079
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2056
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2057
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2058
    if-eqz p1, :cond_1

    .line 2059
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2060
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2061
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2063
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2066
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_2

    .line 2067
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v3, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2070
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2071
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2073
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2074
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2030
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2031
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2033
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2034
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2035
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2036
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2037
    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2040
    iget v6, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2041
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2042
    .local v0, childCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2043
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2044
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2045
    .local v1, lastBottom:I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2048
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_1
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_2
    move v1, v3

    .line 2044
    goto :goto_0

    .line 2045
    .restart local v1       #lastBottom:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 4429
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4430
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4431
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 4432
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4434
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4436
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7096
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_1

    .line 7097
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7098
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    .line 7099
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7100
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7107
    :cond_0
    :goto_0
    return v0

    .line 7103
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    .line 7104
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7105
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7119
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1769
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1771
    .local v0, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1772
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1774
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1776
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_4

    .line 1777
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1778
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1779
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1780
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1781
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1794
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1796
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1797
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1800
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1801
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1804
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1806
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1808
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1811
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1812
    return-void

    .line 1782
    :cond_4
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_0

    .line 1783
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1785
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1786
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1787
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1788
    iget-wide v1, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1789
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1790
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1791
    iput v3, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 1696
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1698
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 1700
    .local v9, superState:Landroid/os/Parcelable;
    new-instance v8, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v8, v9}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1702
    .local v8, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_2

    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v12, :cond_2

    const/4 v3, 0x1

    .line 1703
    .local v3, haveChildren:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1704
    .local v6, selectedId:J
    iput-wide v6, v8, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1705
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1707
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_3

    .line 1709
    iget v12, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1710
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1711
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1738
    :goto_1
    const/4 v12, 0x0

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1739
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v12, :cond_0

    .line 1740
    iget-object v10, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1741
    .local v10, textFilter:Landroid/widget/EditText;
    if-eqz v10, :cond_0

    .line 1742
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1743
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 1744
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1749
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v10           #textFilter:Landroid/widget/EditText;
    :cond_0
    iget v12, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v8, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1751
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_1

    .line 1752
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1754
    :cond_1
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_8

    .line 1755
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1756
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1757
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_7

    .line 1758
    iget-object v12, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1757
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1702
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1713
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_3
    if-eqz v3, :cond_5

    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v12, :cond_5

    .line 1723
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1724
    .local v11, v:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1725
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1726
    .local v2, firstPos:I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v2, v12, :cond_4

    .line 1727
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 1729
    :cond_4
    iput v2, v8, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1730
    iget-object v12, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_1

    .line 1732
    .end local v2           #firstPos:I
    .end local v11           #v:Landroid/view/View;
    :cond_5
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1733
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1734
    const/4 v12, 0x0

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1749
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 1760
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iput-object v5, v8, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1762
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iget v12, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v12, v8, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1764
    return-object v8
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2513
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2515
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2518
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2519
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2521
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6856
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6857
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6858
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6859
    .local v2, showing:Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6861
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6862
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6868
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6869
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6871
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6872
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6879
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_1
    return-void

    .line 6863
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6865
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6866
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6874
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 38
    .parameter "ev"

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->isOutOfTouchRange(Landroid/view/MotionEvent;)Z
    
    move-result v35
    
    if-nez v35, :cond_0
    
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    move/from16 v35, v0

    if-nez v35, :cond_28

    .line 3492
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v35

    if-nez v35, :cond_2

    .line 3495
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v35

    if-nez v35, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v35

    if-eqz v35, :cond_1

    :cond_0
    const/16 v35, 0x1

    .line 4319
    :goto_0
    return v35

    .line 3495
    :cond_1
    const/16 v35, 0x0

    goto :goto_0

    .line 3498
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3

    .line 3499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 3500
    .local v20, intercepted:Z
    if-eqz v20, :cond_3

    .line 3501
    const/16 v35, 0x1

    goto :goto_0

    .line 3505
    .end local v20           #intercepted:Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3509
    .local v4, action:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3512
    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 3852
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v35, 0x1

    goto :goto_0

    .line 3514
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_1

    .line 3530
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3531
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3532
    .local v33, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3533
    .local v34, y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    .line 3534
    .local v25, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    .line 3535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_9

    if-ltz v25, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v35

    check-cast v35, Landroid/widget/ListAdapter;

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 3540
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_5

    .line 3543
    new-instance v35, Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3545
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3558
    :cond_6
    :goto_2
    if-ltz v25, :cond_7

    .line 3560
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3561
    .local v31, v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3563
    .end local v31           #v:Landroid/view/View;
    :cond_7
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3564
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3565
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3566
    const/high16 v35, -0x8000

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    .line 3571
    .end local v25           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :goto_3
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 3572
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_4

    .line 3573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3516
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8

    .line 3518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3520
    :cond_8
    const/16 v35, 0x8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3521
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3522
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3523
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3524
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3525
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_3

    .line 3547
    .restart local v25       #motionPosition:I
    .restart local v33       #x:I
    .restart local v34       #y:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 3549
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3550
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3551
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3552
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v25

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_2

    .line 3580
    .end local v25           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v28

    .line 3581
    .local v28, pointerIndex:I
    const/16 v35, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 3582
    const/16 v28, 0x0

    .line 3583
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3585
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3586
    .restart local v34       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3592
    :pswitch_5
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 3596
    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_1

    .line 3603
    .end local v28           #pointerIndex:I
    .end local v34           #y:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_3

    .line 3744
    :cond_b
    :goto_4
    :pswitch_8
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 3747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3752
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 3755
    .local v14, handler:Landroid/os/Handler;
    if-eqz v14, :cond_d

    .line 3756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3759
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 3761
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/StrictMode$Span;->finish()V

    .line 3772
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 3607
    .end local v14           #handler:Landroid/os/Handler;
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v25, v0

    .line 3608
    .restart local v25       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3610
    .local v7, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    .line 3611
    .local v33, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v33, v35

    if-lez v35, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpg-float v35, v33, v35

    if-gez v35, :cond_14

    const/16 v16, 0x1

    .line 3613
    .local v16, inList:Z
    :goto_5
    if-eqz v7, :cond_18

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_18

    if-eqz v16, :cond_18

    .line 3614
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_e

    .line 3615
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3618
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v35, v0

    if-nez v35, :cond_f

    .line 3619
    new-instance v35, Landroid/widget/AbsListView$PerformClick;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 3622
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v27, v0

    .line 3623
    .local v27, performClick:Landroid/widget/AbsListView$PerformClick;
    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 3624
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3626
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3628
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_17

    .line 3629
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 3630
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_11

    .line 3631
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    :goto_6
    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3634
    :cond_11
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 3636
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3637
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 3638
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3639
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3640
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v7}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3641
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 3644
    .local v11, d:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_12

    instance-of v0, v11, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v35, v0

    if-eqz v35, :cond_12

    .line 3645
    check-cast v11, Landroid/graphics/drawable/TransitionDrawable;

    .end local v11           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3648
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_13

    .line 3649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3651
    :cond_13
    new-instance v35, Landroid/widget/AbsListView$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3668
    :goto_7
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 3611
    .end local v14           #handler:Landroid/os/Handler;
    .end local v16           #inList:Z
    .end local v27           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 3631
    .restart local v14       #handler:Landroid/os/Handler;
    .restart local v16       #inList:Z
    .restart local v27       #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    goto/16 :goto_6

    .line 3665
    :cond_16
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3666
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_7

    .line 3669
    .end local v14           #handler:Landroid/os/Handler;
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 3670
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 3673
    .end local v27           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_18
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_4

    .line 3677
    .end local v7           #child:Landroid/view/View;
    .end local v16           #inList:Z
    .end local v25           #motionPosition:I
    .end local v33           #x:F
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 3678
    .local v8, childCount:I
    if-lez v8, :cond_1f

    .line 3679
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3680
    .local v13, firstChildTop:I
    add-int/lit8 v35, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 3681
    .local v23, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 3682
    .local v10, contentTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v9, v35, v36

    .line 3683
    .local v9, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_19

    if-lt v13, v10, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    sub-int v35, v35, v9

    move/from16 v0, v23

    move/from16 v1, v35

    if-gt v0, v1, :cond_19

    .line 3686
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3687
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3689
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 3690
    .local v32, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3698
    .local v19, initialVelocity:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    sub-int v35, v10, v35

    move/from16 v0, v35

    if-eq v13, v0, :cond_1d

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    add-int v35, v35, v9

    move/from16 v0, v23

    move/from16 v1, v35

    if-eq v0, v1, :cond_1d

    .line 3703
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_1c

    .line 3704
    new-instance v35, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3706
    :cond_1c
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 3710
    :cond_1d
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3711
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 3713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3715
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_b

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto/16 :goto_4

    .line 3721
    .end local v9           #contentBottom:I
    .end local v10           #contentTop:I
    .end local v13           #firstChildTop:I
    .end local v19           #initialVelocity:I
    .end local v23           #lastChildBottom:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_1f
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3722
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 3727
    .end local v8           #childCount:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_20

    .line 3728
    new-instance v35, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3730
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 3731
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3732
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3734
    .restart local v19       #initialVelocity:I
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3735
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_21

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_4

    .line 3738
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_4

    .line 3778
    .end local v19           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_4

    .line 3791
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3792
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3793
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 3794
    .local v26, motionView:Landroid/view/View;
    if-eqz v26, :cond_22

    .line 3795
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3797
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 3799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 3800
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_23

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3804
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 3807
    .end local v14           #handler:Landroid/os/Handler;
    .end local v26           #motionView:Landroid/view/View;
    :goto_8
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_24

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3811
    :cond_24
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 3780
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_25

    .line 3781
    new-instance v35, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 3783
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_8

    .line 3816
    :pswitch_f
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3817
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v33, v0

    .line 3818
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v34, v0

    .line 3819
    .restart local v34       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    .line 3820
    .restart local v25       #motionPosition:I
    if-ltz v25, :cond_26

    .line 3822
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3823
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3824
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3826
    .end local v31           #v:Landroid/view/View;
    :cond_26
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3832
    .end local v25           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    .line 3833
    .local v18, index:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 3834
    .local v15, id:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3835
    .restart local v33       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3836
    .restart local v34       #y:I
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3837
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3838
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3839
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3840
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    .line 3841
    .restart local v25       #motionPosition:I
    if-ltz v25, :cond_27

    .line 3843
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3844
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3845
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3847
    .end local v31           #v:Landroid/view/View;
    :cond_27
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3857
    .end local v4           #action:I
    .end local v15           #id:I
    .end local v18           #index:I
    .end local v25           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v35

    if-nez v35, :cond_2b

    .line 3860
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v35

    if-nez v35, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v35

    if-eqz v35, :cond_2a

    :cond_29
    const/16 v35, 0x1

    goto/16 :goto_0

    :cond_2a
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 3863
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2c

    .line 3864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    .line 3865
    .restart local v20       #intercepted:Z
    if-eqz v20, :cond_2c

    .line 3866
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 3870
    .end local v20           #intercepted:Z
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3875
    .restart local v4       #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-nez v35, :cond_2d

    .line 3876
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3878
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3880
    and-int/lit16 v0, v4, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_5

    .line 4319
    :cond_2e
    :goto_9
    :pswitch_11
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 3888
    :pswitch_12
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3889
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3890
    .restart local v33       #x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3891
    .restart local v34       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    .line 3894
    .restart local v25       #motionPosition:I
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isDraw:Z

    .line 3898
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isFillDivider()Z

    move-result v21

    .line 3899
    .local v21, isFillDivider:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_32

    .line 3901
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x7

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_34

    if-ltz v25, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v35

    check-cast v35, Landroid/widget/ListAdapter;

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-nez v35, :cond_30

    :cond_2f
    if-nez v21, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_34

    .line 3905
    :cond_30
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_31

    .line 3908
    new-instance v35, Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3910
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3931
    :cond_32
    :goto_a
    if-ltz v25, :cond_33

    .line 3933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3934
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3937
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->isSeekBar(Landroid/view/View;)Z

    move-result v35

    if-eqz v35, :cond_33

    .line 3938
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v29

    .line 3939
    .local v29, seekbar:Landroid/widget/SeekBar;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3943
    .end local v29           #seekbar:Landroid/widget/SeekBar;
    .end local v31           #v:Landroid/view/View;
    :cond_33
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 3944
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 3945
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3946
    const/high16 v35, -0x8000

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_9

    .line 3913
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v35

    if-eqz v35, :cond_35

    if-gez v25, :cond_35

    if-nez v21, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v35, v0

    if-nez v35, :cond_35

    .line 3917
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 3920
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x7

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_32

    .line 3922
    :cond_36
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3923
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3924
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3925
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v25

    .line 3926
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_a

    .line 3954
    .end local v21           #isFillDivider:Z
    .end local v25           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_13
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isDraw:Z

    .line 3956
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v28

    .line 3957
    .restart local v28       #pointerIndex:I
    const/16 v35, -0x1

    move/from16 v0, v28

    move/from16 v1, v35

    if-eq v0, v1, :cond_2e

    .line 3960
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3961
    .restart local v34       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v35, v0

    sub-int v12, v34, v35

    .line 3967
    .local v12, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_6

    :pswitch_14
    goto/16 :goto_9

    .line 3982
    :pswitch_15
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v6

    .line 3983
    .local v6, b:Z
    if-nez v6, :cond_2e

    .line 3985
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 3986
    .restart local v26       #motionView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->isSeekBar(Landroid/view/View;)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 3987
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v29

    .line 3988
    .restart local v29       #seekbar:Landroid/widget/SeekBar;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_9

    .line 4008
    .end local v6           #b:Z
    .end local v26           #motionView:Landroid/view/View;
    .end local v29           #seekbar:Landroid/widget/SeekBar;
    :pswitch_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_2e

    .line 4009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move/from16 v35, v0

    sub-int v12, v12, v35

    .line 4010
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v35, v0

    const/high16 v36, -0x8000

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v35, v0

    sub-int v17, v34, v35

    .line 4016
    .local v17, incrementalDeltaY:I
    :goto_b
    const/4 v5, 0x0

    .line 4017
    .local v5, atEdge:Z
    if-eqz v17, :cond_37

    .line 4018
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v5

    .line 4022
    :cond_37
    if-eqz v5, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v35

    if-lez v35, :cond_39

    .line 4027
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v25

    .line 4028
    .restart local v25       #motionPosition:I
    if-ltz v25, :cond_38

    .line 4029
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 4030
    .restart local v26       #motionView:Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4032
    .end local v26           #motionView:Landroid/view/View;
    :cond_38
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 4033
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4034
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4036
    .end local v25           #motionPosition:I
    :cond_39
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_9

    .end local v5           #atEdge:Z
    .end local v17           #incrementalDeltaY:I
    :cond_3a
    move/from16 v17, v12

    .line 4010
    goto :goto_b

    .line 4049
    .end local v12           #deltaY:I
    .end local v28           #pointerIndex:I
    .end local v34           #y:I
    :pswitch_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    .line 4050
    .local v22, isSeekBarmotionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v22, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 4051
    .local v24, listChild:Landroid/view/View;
    if-eqz v24, :cond_3b

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->isSeekBar(Landroid/view/View;)Z

    move-result v35

    if-eqz v35, :cond_3b

    .line 4052
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v29

    .line 4053
    .restart local v29       #seekbar:Landroid/widget/SeekBar;
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4057
    .end local v29           #seekbar:Landroid/widget/SeekBar;
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_7

    .line 4189
    :goto_c
    :pswitch_18
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v35, v0

    if-eqz v35, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_3d

    .line 4192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 4193
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4194
    invoke-virtual/range {v32 .. v32}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4196
    .restart local v19       #initialVelocity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_3c

    .line 4197
    new-instance v35, Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    .line 4199
    :cond_3c
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/AbsListView$OppoFlingRunnable;->start(I)V

    .line 4204
    .end local v19           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4206
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 4207
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_3e

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4211
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-eqz v35, :cond_3f

    .line 4212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->recycle()V

    .line 4213
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4216
    :cond_3f
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_9

    .line 4061
    .end local v14           #handler:Landroid/os/Handler;
    :pswitch_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v25, v0

    .line 4062
    .restart local v25       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4064
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    .line 4065
    .local v33, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v33, v35

    if-lez v35, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpg-float v35, v33, v35

    if-gez v35, :cond_46

    const/16 v16, 0x1

    .line 4067
    .restart local v16       #inList:Z
    :goto_d
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_4b

    if-eqz v16, :cond_4b

    .line 4068
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_40

    .line 4069
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4072
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v35, v0

    if-nez v35, :cond_41

    .line 4073
    new-instance v35, Landroid/widget/AbsListView$PerformClick;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4076
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v27, v0

    .line 4077
    .restart local v27       #performClick:Landroid/widget/AbsListView$PerformClick;
    move/from16 v0, v25

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4078
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4081
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v30

    .line 4092
    .local v30, shouldHandleEvent:Z
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4094
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_49

    .line 4095
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 4096
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_43

    .line 4097
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    :goto_e
    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4100
    :cond_43
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_48

    .line 4102
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4104
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4105
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4106
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v7}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4107
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_44

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 4110
    .restart local v11       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_44

    instance-of v0, v11, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v35, v0

    if-eqz v35, :cond_44

    .line 4111
    check-cast v11, Landroid/graphics/drawable/TransitionDrawable;

    .end local v11           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4114
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_45

    .line 4115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4117
    :cond_45
    new-instance v35, Landroid/widget/AbsListView$2;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4134
    :goto_f
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 4065
    .end local v14           #handler:Landroid/os/Handler;
    .end local v16           #inList:Z
    .end local v27           #performClick:Landroid/widget/AbsListView$PerformClick;
    .end local v30           #shouldHandleEvent:Z
    :cond_46
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 4097
    .restart local v14       #handler:Landroid/os/Handler;
    .restart local v16       #inList:Z
    .restart local v27       #performClick:Landroid/widget/AbsListView$PerformClick;
    .restart local v30       #shouldHandleEvent:Z
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    goto/16 :goto_e

    .line 4131
    :cond_48
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_f

    .line 4135
    .end local v14           #handler:Landroid/os/Handler;
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_4a

    .line 4136
    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView$PerformClick;->run()V

    .line 4146
    .end local v27           #performClick:Landroid/widget/AbsListView$PerformClick;
    .end local v30           #shouldHandleEvent:Z
    :cond_4a
    :goto_10
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_c

    .line 4141
    :cond_4b
    if-eqz v7, :cond_4a

    .line 4142
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_10

    .line 4151
    .end local v7           #child:Landroid/view/View;
    .end local v16           #inList:Z
    .end local v25           #motionPosition:I
    .end local v33           #x:F
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 4152
    .restart local v8       #childCount:I
    if-lez v8, :cond_4f

    .line 4153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_4c

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_4c

    add-int/lit8 v35, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_4c

    .line 4157
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4158
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_c

    .line 4160
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 4161
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4165
    .restart local v19       #initialVelocity:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_4e

    .line 4166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_4d

    .line 4167
    new-instance v35, Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    .line 4169
    :cond_4d
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/AbsListView$OppoFlingRunnable;->start(I)V

    goto/16 :goto_c

    .line 4177
    :cond_4e
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4178
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_c

    .line 4183
    .end local v19           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_4f
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4184
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_c

    .line 4229
    .end local v8           #childCount:I
    .end local v22           #isSeekBarmotionPosition:I
    .end local v24           #listChild:Landroid/view/View;
    :pswitch_1b
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->isDraw:Z

    .line 4230
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 4231
    .restart local v26       #motionView:Landroid/view/View;
    if-eqz v26, :cond_50

    .line 4232
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4234
    :cond_50
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    goto/16 :goto_9

    .line 4241
    .end local v26           #motionView:Landroid/view/View;
    :pswitch_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v35, v0

    if-eqz v35, :cond_53

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_53

    .line 4242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 4243
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4244
    invoke-virtual/range {v32 .. v32}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4246
    .restart local v19       #initialVelocity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_51

    .line 4247
    new-instance v35, Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$OppoFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    .line 4249
    :cond_51
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/AbsListView$OppoFlingRunnable;->start(I)V

    .line 4253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4255
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 4256
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_52

    .line 4257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4260
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2e

    .line 4261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->recycle()V

    .line 4262
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_9

    .line 4274
    .end local v14           #handler:Landroid/os/Handler;
    .end local v19           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_53
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4275
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4276
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 4277
    .restart local v26       #motionView:Landroid/view/View;
    if-eqz v26, :cond_54

    .line 4278
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4280
    :cond_54
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 4283
    .restart local v14       #handler:Landroid/os/Handler;
    if-eqz v14, :cond_55

    .line 4284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4287
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-eqz v35, :cond_56

    .line 4288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->recycle()V

    .line 4289
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4292
    :cond_56
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    goto/16 :goto_9

    .line 4298
    .end local v14           #handler:Landroid/os/Handler;
    .end local v26           #motionView:Landroid/view/View;
    :pswitch_1d
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionX:I

    move/from16 v33, v0

    .line 4300
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v34, v0

    .line 4301
    .restart local v34       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v25

    .line 4302
    .restart local v25       #motionPosition:I
    if-ltz v25, :cond_57

    .line 4304
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v25, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 4305
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastMotionPosition:I

    .line 4312
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4314
    .end local v31           #v:Landroid/view/View;
    :cond_57
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_9

    .line 3512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3514
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
    .end packed-switch

    .line 3586
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3603
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3778
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 3880
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_12
        :pswitch_17
        :pswitch_13
        :pswitch_1c
        :pswitch_11
        :pswitch_1b
        :pswitch_1d
    .end packed-switch

    .line 3967
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 4057
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 3449
    if-eqz p1, :cond_2

    .line 3451
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3455
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3458
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3460
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3483
    :cond_1
    :goto_0
    return-void

    .line 3463
    :cond_2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v1, :cond_1

    .line 3464
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3465
    .local v0, touchMode:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3466
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3467
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3469
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_5

    .line 3470
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3473
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3474
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 3475
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3476
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2826
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 2828
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 2830
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_6

    .line 2831
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2833
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v3, :cond_4

    .line 2834
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 2835
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2838
    iget-object v3, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v3}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 2839
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v3, :cond_0

    .line 2840
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2842
    :cond_0
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2843
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 2845
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 2846
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2870
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2872
    if-ne v0, v2, :cond_2

    .line 2874
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2898
    :cond_2
    :goto_2
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 2899
    return-void

    .end local v0           #touchMode:I
    :cond_3
    move v0, v2

    .line 2828
    goto :goto_0

    .line 2851
    .restart local v0       #touchMode:I
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    if-eqz v3, :cond_5

    .line 2852
    const-string v3, "AbsListView"

    const-string v4, "2137 onWindowFocusChanged mFantasticScrollMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget-object v3, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2856
    iget-object v3, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    #calls: Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V
    invoke-static {v3}, Landroid/widget/AbsListView$OppoFlingRunnable;->access$200(Landroid/widget/AbsListView$OppoFlingRunnable;)V

    .line 2857
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2858
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2859
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_1

    .line 2862
    :cond_5
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_1

    .line 2863
    iput v1, p0, Landroid/view/View;->mScrollY:I

    .line 2864
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_1

    .line 2877
    :cond_6
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 2879
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 2883
    :cond_7
    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2885
    if-ne v0, v2, :cond_8

    .line 2887
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_2

    .line 2891
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2892
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2893
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1142
    const/4 v7, 0x0

    .line 1143
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1145
    .local v6, dispatchItemClick:Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 1146
    const/4 v7, 0x1

    .line 1148
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1150
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v8

    .line 1151
    .local v5, newValue:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1152
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    if-eqz v5, :cond_6

    .line 1154
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1159
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1160
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1164
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1167
    const/4 v6, 0x0

    .line 1184
    .end local v5           #newValue:Z
    :cond_2
    :goto_3
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1185
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1186
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1189
    :cond_3
    if-eqz v6, :cond_4

    .line 1190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1193
    :cond_4
    return v7

    :cond_5
    move v5, v0

    .line 1150
    goto :goto_0

    .line 1156
    .restart local v5       #newValue:Z
    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1162
    :cond_7
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1169
    .end local v5           #newValue:Z
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_2

    .line 1170
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_a

    move v5, v8

    .line 1171
    .restart local v5       #newValue:Z
    :goto_4
    if-eqz v5, :cond_b

    .line 1172
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1173
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1174
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1175
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1176
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1178
    :cond_9
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v5           #newValue:Z
    :cond_a
    move v5, v0

    .line 1170
    goto :goto_4

    .line 1179
    .restart local v5       #newValue:Z
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1180
    :cond_c
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 8
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3005
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3006
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3008
    invoke-virtual {p0, p2, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3009
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3026
    :cond_0
    :goto_0
    return v6

    .line 3014
    :cond_1
    const/4 v6, 0x0

    .line 3015
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3016
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3019
    :cond_2
    if-nez v6, :cond_3

    .line 3020
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3021
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3023
    :cond_3
    if-eqz v6, :cond_0

    .line 3024
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3123
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3124
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3125
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3126
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3129
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3130
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 3131
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3132
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3133
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3134
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3135
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 3139
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 3130
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3139
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3152
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3153
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 3154
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3156
    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method protected positionSelector(ILandroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 2279
    if-eq p1, v9, :cond_0

    .line 2280
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2284
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v4, :cond_1

    .line 2285
    iput-object p2, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    .line 2288
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2289
    .local v2, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2290
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_2

    move-object v4, p2

    .line 2291
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v2}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2294
    :cond_2
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v4, :cond_3

    .line 2295
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v0

    .line 2296
    .local v0, currentSelectPosition:I
    if-eq v0, v9, :cond_6

    .line 2297
    invoke-direct {p0, v0, v2}, Landroid/widget/AbsListView;->resizeSelectorBound(ILandroid/graphics/Rect;)V

    .line 2305
    .end local v0           #currentSelectPosition:I
    :cond_3
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v6, v7, v8}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 2309
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v4, :cond_4

    .line 2310
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v3

    .line 2312
    .local v3, shouldHandleEvent:Z
    if-nez v3, :cond_4

    .line 2313
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 2318
    .end local v3           #shouldHandleEvent:Z
    :cond_4
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2319
    .local v1, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v1, :cond_5

    .line 2320
    if-nez v1, :cond_7

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2321
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v4

    if-eq v4, v9, :cond_5

    .line 2322
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 2325
    :cond_5
    return-void

    .line 2300
    .end local v1           #isChildViewEnabled:Z
    .restart local v0       #currentSelectPosition:I
    :cond_6
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-direct {p0, v4, v2}, Landroid/widget/AbsListView;->resizeSelectorBound(ILandroid/graphics/Rect;)V

    goto :goto_0

    .end local v0           #currentSelectPosition:I
    .restart local v1       #isChildViewEnabled:Z
    :cond_7
    move v4, v5

    .line 2320
    goto :goto_1
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6979
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6980
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #getter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$6500(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6983
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6984
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6985
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6987
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6988
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6989
    if-eqz v3, :cond_0

    .line 6991
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6983
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6995
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6996
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6997
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 6157
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6158
    .local v0, position:I
    if-gez v0, :cond_0

    .line 6159
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6161
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6162
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6163
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 4711
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 4712
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 4713
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4714
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4717
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 4548
    if-eqz p1, :cond_0

    .line 4549
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4551
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4552
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1875
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1876
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 1878
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1592
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1594
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1597
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1884
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 1885
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1886
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1887
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1888
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1889
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1890
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1891
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1892
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1893
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1894
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1895
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1896
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 6227
    .local v3, childCount:I
    if-gtz v3, :cond_0

    .line 6228
    const/16 v17, 0x0

    .line 6334
    :goto_0
    return v17

    .line 6231
    :cond_0
    const/4 v13, 0x0

    .line 6233
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 6234
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6235
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6236
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6237
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 6239
    .local v6, down:Z
    if-lt v14, v7, :cond_3

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_3

    .line 6240
    move v12, v14

    .line 6242
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6243
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6244
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 6247
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_2

    .line 6248
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 6304
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 6307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 6322
    :goto_2
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 6323
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 6324
    if-lt v12, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_e

    .line 6325
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6326
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6327
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 6328
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6332
    :goto_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6334
    if-ltz v12, :cond_f

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 6249
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_2
    if-le v11, v4, :cond_1

    .line 6250
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 6254
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_3
    if-ge v14, v7, :cond_7

    .line 6256
    move v12, v7

    .line 6257
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    if-ge v8, v3, :cond_1

    .line 6258
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6259
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6261
    .local v15, top:I
    if-nez v8, :cond_5

    .line 6263
    move v13, v15

    .line 6265
    if-gtz v7, :cond_4

    if-ge v15, v5, :cond_5

    .line 6268
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 6271
    :cond_5
    if-lt v15, v5, :cond_6

    .line 6273
    add-int v12, v7, v8

    .line 6274
    move v13, v15

    .line 6275
    goto/16 :goto_1

    .line 6257
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 6279
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6280
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 6281
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 6283
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_5
    if-ltz v8, :cond_1

    .line 6284
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6285
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6286
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6288
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 6289
    move v13, v15

    .line 6290
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_8

    if-le v2, v4, :cond_9

    .line 6291
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6295
    :cond_9
    if-gt v2, v4, :cond_a

    .line 6296
    add-int v12, v7, v8

    .line 6297
    move v13, v15

    .line 6298
    goto/16 :goto_1

    .line 6283
    :cond_a
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 6309
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6310
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6311
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto/16 :goto_2

    .line 6314
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 6316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 6318
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6319
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto/16 :goto_2

    .line 6330
    :cond_e
    const/4 v12, -0x1

    goto/16 :goto_3

    .line 6334
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 6205
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6206
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6207
    const/4 v0, 0x1

    .line 6209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveSelector(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "drawRect"
    .parameter "bitmap"

    .prologue
    .line 7693
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 1418
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1419
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1420
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1421
    .local v1, lastVisiblePosition:I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1430
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_0
    return-void

    .line 1425
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1426
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1429
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method protected sendDismiss(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 7705
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 6643
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 6704
    :cond_0
    :goto_0
    return v2

    .line 6647
    :cond_1
    const/4 v2, 0x0

    .line 6648
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 6649
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_0

    .line 6681
    :goto_1
    if-eqz v3, :cond_0

    .line 6682
    invoke-direct {p0, v8}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6684
    move-object v1, p3

    .line 6685
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 6686
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6689
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6690
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6692
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6693
    goto :goto_0

    .line 6656
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 6657
    goto :goto_1

    .line 6659
    :sswitch_1
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6660
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 6662
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6663
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 6664
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6666
    :cond_3
    const/4 v2, 0x1

    .line 6673
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 6674
    goto :goto_1

    .line 6667
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 6669
    const/4 v2, 0x1

    .line 6670
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6677
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1

    .line 6696
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6697
    goto :goto_0

    .line 6700
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 6649
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 6690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 954
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 958
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 961
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 6950
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6951
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6952
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6953
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6954
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6953
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6956
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6958
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter "choiceMode"

    .prologue
    .line 1215
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1216
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1220
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1221
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1222
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1224
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1228
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1229
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1233
    :cond_3
    return-void
.end method

.method protected setDefaultBackground()V
    .locals 4

    .prologue
    .line 1550
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/AbsListView;->mSavePaddingLeft:I

    .line 1551
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    iput v0, p0, Landroid/widget/AbsListView;->mSavePaddingTop:I

    .line 1552
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/widget/AbsListView;->mSavePaddingRight:I

    .line 1553
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    iput v0, p0, Landroid/widget/AbsListView;->mSavePaddingBottom:I

    .line 1556
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v0, :cond_1

    .line 1557
    iget v0, p0, Landroid/widget/AbsListView;->mItemID:I

    if-nez v0, :cond_0

    .line 1558
    const v0, 0x10600c5

    iput v0, p0, Landroid/widget/AbsListView;->mItemID:I

    .line 1561
    :cond_0
    const v0, 0x10800b5

    iput v0, p0, Landroid/widget/AbsListView;->mBackgroundID:I

    .line 1563
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 1564
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mBackgroundID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1565
    iget-object v0, p0, Landroid/widget/AbsListView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1567
    iget v0, p0, Landroid/widget/AbsListView;->mSavePaddingLeft:I

    iget v1, p0, Landroid/widget/AbsListView;->mSavePaddingTop:I

    iget v2, p0, Landroid/widget/AbsListView;->mSavePaddingRight:I

    iget v3, p0, Landroid/widget/AbsListView;->mSavePaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->setPadding(IIII)V

    .line 1569
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 2577
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2578
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .parameter "alwaysShow"

    .prologue
    .line 1298
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1302
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1306
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->computeOpaqueFlags()V

    .line 1307
    invoke-virtual {p0}, Landroid/widget/AbsListView;->recomputePadding()V

    .line 1308
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1273
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1274
    if-eqz p1, :cond_1

    .line 1275
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1276
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .parameter "filterText"

    .prologue
    .line 1827
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1828
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1831
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1833
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 1835
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 1836
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1837
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1841
    .end local v0           #f:Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 1842
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1845
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2081
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2083
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 2087
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2088
    .local v1, visible:Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2089
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2093
    .end local v1           #visible:Z
    :cond_0
    return v0

    .line 2087
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 5622
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5623
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5625
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    #getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->access$1300(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5626
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1078
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_2

    .line 1084
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1087
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_9

    .line 1088
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1089
    .local v6, oldValue:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1090
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1091
    if-eqz p2, :cond_7

    .line 1092
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1097
    :cond_4
    :goto_1
    if-eq v6, p2, :cond_5

    .line 1098
    if-eqz p2, :cond_8

    .line 1099
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1104
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 1105
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1106
    .local v3, id:J
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1133
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_6
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1134
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1135
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1136
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 1094
    .restart local v6       #oldValue:Z
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1101
    :cond_8
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1110
    .end local v6           #oldValue:Z
    :cond_9
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_d

    move v7, v8

    .line 1113
    .local v7, updateIds:Z
    :goto_4
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1114
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1115
    if-eqz v7, :cond_b

    .line 1116
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1121
    :cond_b
    if-eqz p2, :cond_e

    .line 1122
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1123
    if-eqz v7, :cond_c

    .line 1124
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1126
    :cond_c
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7           #updateIds:Z
    :cond_d
    move v7, v0

    .line 1110
    goto :goto_4

    .line 1127
    .restart local v7       #updateIds:Z
    :cond_e
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1128
    :cond_f
    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setItemID(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1573
    iput p1, p0, Landroid/widget/AbsListView;->mItemID:I

    .line 1574
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 1575
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1246
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1248
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1249
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1396
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1397
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1398
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 4521
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 4522
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 4523
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 929
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 930
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 931
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 933
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 939
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 940
    return-void

    .line 936
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 937
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 7664
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setPressed(Z)V

    .line 7665
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 7133
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    #setter for: Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;
    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$6502(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 7134
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 7071
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 7072
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7073
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7075
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7082
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_0
    return-void

    .line 7079
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7081
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    goto :goto_0
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2676
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2677
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2678
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1461
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 1463
    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1464
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 2588
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2589
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 2592
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2593
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2594
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2596
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2597
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2599
    .local v0, padding:Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v1, :cond_1

    .line 2600
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2603
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2604
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2605
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2606
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2607
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2608
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2609
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1375
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1376
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 0
    .parameter "springEnable"

    .prologue
    .line 1539
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    invoke-virtual {p0}, Landroid/widget/AbsListView;->setDefaultBackground()V

    .line 1543
    :cond_0
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 1531
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1532
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1533
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1535
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .parameter "textFilterEnabled"

    .prologue
    .line 1477
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1478
    return-void
.end method

.method public setTransItem(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    const/4 v1, 0x0

    .line 1579
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTransFlag:Z

    .line 1580
    if-eqz p1, :cond_0

    .line 1581
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1582
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mItemDrawable:Landroid/graphics/drawable/Drawable;

    .line 1584
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 6921
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6922
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 5635
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5636
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1341
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1342
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1345
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2548
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->isShouldHandleEvent(Landroid/view/View;)Z

    move-result v0

    .line 2550
    .local v0, shouldHandleEvent:Z
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v3, :cond_3

    .line 2551
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2553
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 2551
    goto :goto_0

    .line 2553
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 3037
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v3

    .line 3038
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3039
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3040
    .local v1, id:J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3041
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3042
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3043
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3046
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_0
    return v4

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 3051
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3052
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 3053
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3054
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 3056
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3060
    :cond_0
    if-nez v6, :cond_1

    .line 3061
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3064
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3069
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected showFloatWindow()V
    .locals 0

    .prologue
    .line 7701
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 7
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 5710
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-nez v5, :cond_5

    .line 5711
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 5712
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5716
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5717
    .local v2, firstPos:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5718
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 5719
    .local v3, lastPos:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 5720
    .local v4, topLimit:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5722
    .local v0, bottomLimit:I
    if-eqz p1, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_4

    if-lez p1, :cond_4

    .line 5726
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5727
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_3

    .line 5728
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 5743
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_3
    :goto_0
    return-void

    .line 5731
    .restart local v0       #bottomLimit:I
    .restart local v1       #childCount:I
    .restart local v2       #firstPos:I
    .restart local v3       #lastPos:I
    .restart local v4       #topLimit:I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5732
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_0

    .line 5735
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    if-nez v5, :cond_6

    .line 5736
    new-instance v5, Landroid/widget/AbsListView$OppoFlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$OppoFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    .line 5740
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    invoke-virtual {v5, p1, p2}, Landroid/widget/AbsListView$OppoFlingRunnable;->startScroll(II)V

    goto :goto_0

    .line 5738
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    #calls: Landroid/widget/AbsListView$OppoFlingRunnable;->endFling()V
    invoke-static {v5}, Landroid/widget/AbsListView$OppoFlingRunnable;->access$200(Landroid/widget/AbsListView$OppoFlingRunnable;)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 5749
    const/4 v2, -0x1

    .line 5750
    .local v2, index:I
    if-gez p1, :cond_3

    .line 5751
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5756
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5757
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5758
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5759
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5760
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5762
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5763
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5764
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5765
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 5766
    .local v6, visibleThreshold:F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 5769
    add-int/lit8 v2, v2, 0x1

    .line 5776
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5779
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5752
    :cond_3
    if-lez p1, :cond_0

    .line 5753
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5770
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 5773
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 5644
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5645
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5647
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 5648
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 5697
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5698
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5700
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->start(II)V

    .line 5701
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 5681
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5682
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5684
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(II)V

    .line 5685
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 5663
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 5664
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    .line 5666
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 5667
    return-void
.end method

.method public stopFling()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4332
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    if-eqz v4, :cond_7

    .line 4334
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    if-eqz v4, :cond_3

    .line 4335
    iget-object v3, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4336
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4337
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    float-to-int v1, v4

    .line 4339
    .local v1, initialVelocity:I
    iget-object v4, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    if-nez v4, :cond_0

    .line 4340
    new-instance v4, Landroid/widget/AbsListView$OppoFlingRunnable;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$OppoFlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    .line 4342
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4343
    iget-object v4, p0, Landroid/widget/AbsListView;->mOppoFlingRunnable:Landroid/widget/AbsListView$OppoFlingRunnable;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView$OppoFlingRunnable;->start(I)V

    .line 4346
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4348
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4349
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 4350
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4353
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    .line 4354
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 4355
    iput-object v8, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4425
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #initialVelocity:I
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_2
    :goto_0
    return-void

    .line 4366
    :cond_3
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4367
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4368
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4369
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_4

    .line 4370
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4372
    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4374
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4375
    .restart local v0       #handler:Landroid/os/Handler;
    if-eqz v0, :cond_5

    .line 4376
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4379
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_6

    .line 4380
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 4381
    iput-object v8, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4384
    :cond_6
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_0

    .line 4387
    .end local v0           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :cond_7
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 4400
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4401
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4402
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4403
    .restart local v2       #motionView:Landroid/view/View;
    if-eqz v2, :cond_8

    .line 4404
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4406
    :cond_8
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4408
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4409
    .restart local v0       #handler:Landroid/os/Handler;
    if-eqz v0, :cond_9

    .line 4410
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4413
    :cond_9
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_a

    .line 4414
    iget-object v4, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 4415
    iput-object v8, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4419
    .end local v0           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :cond_a
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_b

    .line 4420
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4421
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4423
    :cond_b
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    goto :goto_0

    .line 4389
    :pswitch_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v4, :cond_c

    .line 4390
    new-instance v4, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v4, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4392
    :cond_c
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_1

    .line 4387
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2529
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2534
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2532
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 32
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 5825
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 5826
    .local v8, childCount:I
    if-nez v8, :cond_0

    .line 5827
    const/16 v30, 0x1

    .line 6104
    :goto_0
    return v30

    .line 5830
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v16

    .line 5831
    .local v16, firstTop:I
    add-int/lit8 v30, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 5833
    .local v22, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 5838
    .local v23, listPadding:Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 5839
    .local v13, effectivePaddingTop:I
    const/4 v12, 0x0

    .line 5840
    .local v12, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 5841
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5842
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5846
    :cond_1
    sub-int v25, v13, v16

    .line 5847
    .local v25, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    sub-int v14, v30, v12

    .line 5848
    .local v14, end:I
    sub-int v26, v22, v14

    .line 5850
    .local v26, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    .line 5857
    .local v19, height:I
    if-gez p1, :cond_3

    .line 5858
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5863
    :goto_1
    if-gez p2, :cond_4

    .line 5864
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5869
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 5872
    .local v15, firstPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mFantasticScrollMode:Z

    move/from16 v30, v0

    if-nez v30, :cond_a

    .line 5874
    if-nez v15, :cond_5

    .line 5875
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v30, v16, v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5879
    :goto_3
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 5880
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5885
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 5887
    .local v5, cannotScrollDown:Z
    :goto_5
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 5890
    .local v6, cannotScrollUp:Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_15

    .line 5891
    :cond_2
    if-eqz p2, :cond_9

    const/16 v30, 0x1

    goto/16 :goto_0

    .line 5860
    .end local v5           #cannotScrollDown:Z
    .end local v6           #cannotScrollUp:Z
    .end local v15           #firstPosition:I
    :cond_3
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 5866
    :cond_4
    add-int/lit8 v30, v19, -0x1

    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 5877
    .restart local v15       #firstPosition:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 5882
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v30, v0

    add-int v30, v30, p2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 5885
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 5887
    .restart local v5       #cannotScrollDown:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 5891
    .restart local v6       #cannotScrollUp:Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5894
    .end local v5           #cannotScrollDown:Z
    .end local v6           #cannotScrollUp:Z
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSpringEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 5896
    if-nez p2, :cond_b

    .line 5897
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5900
    :cond_b
    if-nez v15, :cond_f

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_f

    .line 5904
    if-ltz p2, :cond_d

    .line 5907
    invoke-static/range {p2 .. p2}, Landroid/widget/AbsListView;->getDeg2(I)I

    move-result p2

    .line 5908
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    sub-int v30, v30, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 5911
    const/16 v30, 0x0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5918
    :goto_7
    const/16 v30, 0x6

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5919
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5921
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5916
    :cond_c
    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollTo(II)V

    goto :goto_7

    .line 5922
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    if-gez v30, :cond_f

    .line 5923
    invoke-static/range {p2 .. p2}, Landroid/widget/AbsListView;->getDeg2(I)I

    move-result v28

    .line 5927
    .local v28, tmpDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    sub-int v30, v30, v28

    if-gez v30, :cond_e

    .line 5930
    const/16 v30, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5931
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5932
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5937
    :cond_e
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollTo(II)V

    .line 5938
    const/16 v30, 0x3

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5939
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5940
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5945
    .end local v28           #tmpDeltaY:I
    :cond_f
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    move/from16 v0, v22

    if-gt v0, v14, :cond_15

    .line 5948
    if-gtz p2, :cond_11

    .line 5950
    invoke-static/range {p2 .. p2}, Landroid/widget/AbsListView;->getDeg2(I)I

    move-result p2

    .line 5951
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    sub-int v30, v30, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 5954
    const/16 v30, 0x0

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5960
    :goto_8
    const/16 v30, 0x6

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5961
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5962
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5958
    :cond_10
    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollTo(II)V

    goto :goto_8

    .line 5963
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    if-lez v30, :cond_15

    .line 5966
    invoke-static/range {p2 .. p2}, Landroid/widget/AbsListView;->getDeg2(I)I

    move-result v28

    .line 5968
    .restart local v28       #tmpDeltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v30, v0

    sub-int v30, v30, v28

    if-lez v30, :cond_12

    .line 5970
    const/16 v30, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollBy(II)V

    .line 5971
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5972
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5976
    :cond_12
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->scrollTo(II)V

    .line 5977
    const/16 v30, 0x3

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5978
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5979
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5984
    .end local v28           #tmpDeltaY:I
    :cond_13
    if-nez v15, :cond_14

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v16

    move/from16 v1, v30

    if-lt v0, v1, :cond_14

    if-ltz p1, :cond_14

    .line 5987
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 5990
    :cond_14
    add-int v30, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    move/from16 v0, v22

    if-gt v0, v14, :cond_15

    if-gtz p1, :cond_15

    .line 5993
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 5999
    :cond_15
    if-gez p2, :cond_1e

    const/4 v11, 0x1

    .line 6001
    .local v11, down:Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 6002
    .local v21, inTouchMode:Z
    if-eqz v21, :cond_16

    .line 6003
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 6006
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 6007
    .local v18, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v31

    sub-int v17, v30, v31

    .line 6009
    .local v17, footerViewsStart:I
    const/16 v27, 0x0

    .line 6010
    .local v27, start:I
    const/4 v10, 0x0

    .line 6016
    .local v10, count:I
    if-eqz v11, :cond_21

    .line 6017
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v29, v0

    .line 6018
    .local v29, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 6019
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 6021
    :cond_17
    const/16 v20, 0x0

    .local v20, i:I
    :goto_a
    move/from16 v0, v20

    if-ge v0, v8, :cond_18

    .line 6022
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6023
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v29

    if-lt v0, v1, :cond_1f

    .line 6065
    .end local v7           #child:Landroid/view/View;
    .end local v29           #top:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v30, v0

    add-int v30, v30, p1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 6067
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6069
    if-lez v10, :cond_19

    .line 6070
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 6072
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 6074
    if-eqz v11, :cond_1a

    .line 6075
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v30, v0

    add-int v30, v30, v10

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6078
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6080
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6081
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v25

    if-lt v0, v3, :cond_1b

    move/from16 v0, v26

    if-ge v0, v3, :cond_1c

    .line 6082
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 6085
    :cond_1c
    if-nez v21, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_24

    .line 6086
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6087
    .local v9, childIndex:I
    if-ltz v9, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_1d

    .line 6088
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6099
    .end local v9           #childIndex:I
    :cond_1d
    :goto_b
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 6101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6102
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6104
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 5999
    .end local v3           #absIncrementalDeltaY:I
    .end local v10           #count:I
    .end local v11           #down:Z
    .end local v17           #footerViewsStart:I
    .end local v18           #headerViewsCount:I
    .end local v20           #i:I
    .end local v21           #inTouchMode:Z
    .end local v27           #start:I
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 6026
    .restart local v7       #child:Landroid/view/View;
    .restart local v10       #count:I
    .restart local v11       #down:Z
    .restart local v17       #footerViewsStart:I
    .restart local v18       #headerViewsCount:I
    .restart local v20       #i:I
    .restart local v21       #inTouchMode:Z
    .restart local v27       #start:I
    .restart local v29       #top:I
    :cond_1f
    add-int/lit8 v10, v10, 0x1

    .line 6027
    add-int v24, v15, v20

    .line 6028
    .local v24, position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_20

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_20

    .line 6029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6021
    :cond_20
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 6040
    .end local v7           #child:Landroid/view/View;
    .end local v20           #i:I
    .end local v24           #position:I
    .end local v29           #top:I
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    sub-int v4, v30, p2

    .line 6041
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    and-int/lit8 v30, v30, 0x22

    const/16 v31, 0x22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    .line 6042
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v4, v4, v30

    .line 6044
    :cond_22
    add-int/lit8 v20, v8, -0x1

    .restart local v20       #i:I
    :goto_c
    if-ltz v20, :cond_18

    .line 6045
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6046
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v30

    move/from16 v0, v30

    if-le v0, v4, :cond_18

    .line 6049
    move/from16 v27, v20

    .line 6050
    add-int/lit8 v10, v10, 0x1

    .line 6051
    add-int v24, v15, v20

    .line 6052
    .restart local v24       #position:I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_23

    .line 6053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 6044
    :cond_23
    add-int/lit8 v20, v20, -0x1

    goto :goto_c

    .line 6090
    .end local v4           #bottom:I
    .end local v7           #child:Landroid/view/View;
    .end local v24           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_25

    .line 6091
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v31, v0

    sub-int v9, v30, v31

    .line 6092
    .restart local v9       #childIndex:I
    if-ltz v9, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v9, v0, :cond_1d

    .line 6093
    const/16 v30, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_b

    .line 6096
    .end local v9           #childIndex:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_b
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2103
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2106
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v6, :cond_4

    move v1, v4

    .line 2109
    .local v1, canScrollUp:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2110
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 2111
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2112
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5

    move v1, v4

    .line 2116
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_6

    move v6, v5

    :goto_2
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2119
    .end local v1           #canScrollUp:Z
    :cond_1
    iget-object v6, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 2124
    .local v3, count:I
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v6, v8, :cond_7

    move v0, v4

    .line 2127
    .local v0, canScrollDown:Z
    :goto_3
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    .line 2128
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2129
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_8

    move v0, v4

    .line 2132
    .end local v2           #child:Landroid/view/View;
    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_3
    return-void

    :cond_4
    move v1, v5

    .line 2106
    goto :goto_0

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5
    move v1, v5

    .line 2112
    goto :goto_1

    .end local v2           #child:Landroid/view/View;
    :cond_6
    move v6, v7

    .line 2116
    goto :goto_2

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_7
    move v0, v5

    .line 2124
    goto :goto_3

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_8
    move v0, v5

    .line 2129
    goto :goto_4

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v5, v7

    .line 2132
    goto :goto_5
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2681
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2682
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2683
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2688
    :cond_0
    :goto_0
    return-void

    .line 2685
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 2732
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchPadding(II)V
    .locals 0
    .parameter "paddingLeft"
    .parameter "paddingRight"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    iput p2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    return-void
.end method

.method private isOutOfTouchRange(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method