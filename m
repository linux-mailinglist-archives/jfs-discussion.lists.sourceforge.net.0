Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E852BA693
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Nov 2020 10:53:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kg36J-0004SO-Om; Fri, 20 Nov 2020 09:53:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <butterflyhuangxx@gmail.com>) id 1kg36I-0004SH-Jq
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 09:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PBTsmNKv8vadYJg1/1024EHHBUem4NxR3vymSZL1jbg=; b=RjjGdxQT4XE3kTW5AJH5J18Izr
 JVsKTnkepviECKaRcWFnzzyaf5pX1S5otYhJUpQqD0SP90XhuNii3RsDAUTN9vrTzJr2dHlsK2c35
 QZl+9rx7eeo9ynrAIowwMNn0ftYEBWQoqJSWYc6RCzPjzOlke2m9Wex9MRP+KVp0JjU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PBTsmNKv8vadYJg1/1024EHHBUem4NxR3vymSZL1jbg=; b=VCfA37wPc9NpGLWftHTkR/OYN/
 hPtT1Lz/N35Ej7vaA4sVGwEuAZkXoH9+qyXFZmTPcUnIJ5rT5VSmTxccv2qIdC0nk/IeAxMMCu2jO
 Ww3+3w0Yd9xR5ayDZNQRzSWVrKVAXYeYJA0gY/kpQ3SpsU/EeRh0LfoEtUHhQGWOYBKA=;
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kg36D-002ZW2-Bz
 for jfs-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 09:53:06 +0000
Received: by mail-lf1-f66.google.com with SMTP id j205so12564591lfj.6
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 20 Nov 2020 01:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PBTsmNKv8vadYJg1/1024EHHBUem4NxR3vymSZL1jbg=;
 b=fisWQZXUBIbv24FaTk612Nxy3lgfUzxISMMVSOnsg25d+wmMusuLXY/3ULelqap4nK
 MEhR3Z7RnJFBv2j/bEMM3jnT8HBZZA4uIH0Mpu6TyHuB+xLBbcubXs8zc/dzq7L31p4P
 UuWZEe4GlOdeSdWbVN0CGE/VvSjXdpMcfMG4cmYwwb/XCj8q7ae9F/IQBk/GTujSrHqt
 xC6K0mTcaO3wNH2fAKRseLo2MPLJYWATL16BtbKB6d5Ikrc5JtbVz94CKNoaBkbhVQae
 +tLzSA72EC5LUegS+sno/1Bi7lm4ql72ydNSZXgjmRpbaWns9gxxjvtU3aWyBRJX50jy
 LLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PBTsmNKv8vadYJg1/1024EHHBUem4NxR3vymSZL1jbg=;
 b=t4vWy4D7GBRSzN9zNPr16HgFaEAaBV+Y2FcDEUEd6aYf32QLLfA+TTUllRQ9oNG9XG
 wtz23SbGHjOYFVk5F8HbMiBr+YQydHL9fOXAdSB0CB1bhgh7PrY89YS1r+FeYxMsP53V
 T2MyBuOCBQE6t874AS+ptL2RsTHXD6/e/fXwH2rmrCOrxhM/8S0NfyPQgOyb06hISLqT
 GNgWNWR4VuRRXIJHW30BetId5F2/phsKcc7CJRvdsv1rt5GZI1s6g3QZVECpwwuWme0l
 rc77sp+ZNrv0r6LJfAqQ4sbcMI8m17nD8+UQikSy0RPFOR33oXUvxt33lQ1g691OConO
 bj7A==
X-Gm-Message-State: AOAM532X/9nqV2i/bL4r1PeKXqwLDHMZD3hqomGJ04ryDZ+S48gDzCWF
 ppfOcO9jZgplGb3Mb+c4cyiP9GMf3f8yWtEgWiw=
X-Google-Smtp-Source: ABdhPJx7IrNUc4/8BSBYVjO06wUwht/PU30NkY5hhoJJbLJ/3l7pec9BERrOd2eA/gC17gHvg8MGafFJO4cnYsgJpRU=
X-Received: by 2002:a19:6e4c:: with SMTP id q12mr7149047lfk.162.1605865967567; 
 Fri, 20 Nov 2020 01:52:47 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XN=cd=_K_2AY9OL7f+HWsazY-nJ81Ufrw4azvkjj-Mpng@mail.gmail.com>
 <e8c8ef27-1f09-40b5-e5e4-facfcc9956dd@oracle.com>
 <CAFcO6XMhrhJXWjRymKUWgFUov6OV7fTk-Nu9Tq=kOyPTMRnTug@mail.gmail.com>
 <298485e2-01de-048d-5515-44ac254167e4@oracle.com>
In-Reply-To: <298485e2-01de-048d-5515-44ac254167e4@oracle.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Fri, 20 Nov 2020 17:52:36 +0800
Message-ID: <CAFcO6XOvx2W1EvN7PORomgYj4U7kcyzjBC=OiQp9bfRZ33gBMg@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (butterflyhuangxx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kg36D-002ZW2-Bz
Subject: Re: [Jfs-discussion] UBSAN: array-index-out-of-bounds in dbAdjTree
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

You are welcome and have you submitted the patch to linux upstream ?
If you have no time do that and I can do it.

Regard,
 butt3rflyh4ck.

On Sun, Nov 15, 2020 at 12:17 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> Thanks for reporting and testing this!
>
> Shaggy
>
> On 11/14/20 7:55 AM, butt3rflyh4ck wrote:
> > Yes, I have tested the patch, it seem to fix the problem.
> >
> > Regard,
> >  butt3rflyh4ck.
> >
> > On Sat, Nov 14, 2020 at 5:16 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> >>
> >> On 10/8/20 12:00 PM, butt3rflyh4ck wrote:
> >>> I report a array-index-out-of-bounds bug (in linux-5.9.0-rc6) found by
> >>> kernel fuzz.
> >>>
> >>> kernel config: https://github.com/butterflyhack/syzkaller-fuzz/blob/master/v5.9.0-rc6-config
> >>>
> >>> and can reproduce.
> >>>
> >>> the dmtree_t is that
> >>> typedef union dmtree {
> >>> struct dmaptree t1;
> >>> struct dmapctl t2;
> >>> } dmtree_t;
> >>>
> >>> the dmaptree is that
> >>> struct dmaptree {
> >>> __le32 nleafs; /* 4: number of tree leafs */
> >>> __le32 l2nleafs; /* 4: l2 number of tree leafs */
> >>> __le32 leafidx; /* 4: index of first tree leaf */
> >>> __le32 height; /* 4: height of the tree */
> >>> s8 budmin; /* 1: min l2 tree leaf value to combine */
> >>> s8 stree[TREESIZE]; /* TREESIZE: tree */
> >>> u8 pad[2]; /* 2: pad to word boundary */
> >>> };
> >>> the TREESIZE is totally 341, but the leafidx type is __le32.
> >>
> >> Does this patch fix the problem?
> >>
> >> jfs: Fix array index bounds check in dbAdjTree
> >>
> >> Bounds checking tools can flag a bug in dbAdjTree() for an array index
> >> out of bounds in dmt_stree. Since dmt_stree can refer to the stree in
> >> both structures dmaptree and dmapctl, use the larger array to eliminate
> >> the false positive.
> >>
> >> Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
> >> ---
> >>  fs/jfs/jfs_dmap.h | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/fs/jfs/jfs_dmap.h b/fs/jfs/jfs_dmap.h
> >> index 29891fad3f09..aa03a904d5ab 100644
> >> --- a/fs/jfs/jfs_dmap.h
> >> +++ b/fs/jfs/jfs_dmap.h
> >> @@ -183,7 +183,7 @@ typedef union dmtree {
> >>  #define        dmt_leafidx     t1.leafidx
> >>  #define        dmt_height      t1.height
> >>  #define        dmt_budmin      t1.budmin
> >> -#define        dmt_stree       t1.stree
> >> +#define        dmt_stree       t2.stree
> >>
> >>  /*
> >>   *     on-disk aggregate disk allocation map descriptor.
> >> --
> >> 2.29.2
> >>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
