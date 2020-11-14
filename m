Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 360B02B2D7F
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Nov 2020 14:56:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kdw2E-0003F8-4u; Sat, 14 Nov 2020 13:56:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <butterflyhuangxx@gmail.com>) id 1kdw2C-0003Ei-HF
 for jfs-discussion@lists.sourceforge.net; Sat, 14 Nov 2020 13:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SK840U8/7axwAqhuwZnwdljtfw13UYNDip/jhTdp73Q=; b=UEyc1zQZ+UOLC/lyNjxZykUD/k
 v007CH0vbcP5Im6C+nqftIDACsH1QIVaKNT9U0I9F3LBUIKgKUsa5P7zKAC7rokRQAt87Aafhdd1O
 nCZYOiCLYXD1UdRquyXCZEkcoKIgqsKh0JqwYQWJqj6uDmpNh6A6ioyOWrVQoRLEMBIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SK840U8/7axwAqhuwZnwdljtfw13UYNDip/jhTdp73Q=; b=P2zY0XHlT9J/LxbddBwdOq5+6J
 gfuIa4LzUp308MyoMpj9DCKF01NUXlnK9hX5jMceNWmLKR69+Uddef04cTke5OfQEBcyolf5Mv93b
 VV14/x9f9wv68iVKPXEUFZ0g4UREa1l4nKFSRKV7nP6OBCXKekvPUr1nUAgKp2jtyQxw=;
Received: from mail-lf1-f67.google.com ([209.85.167.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kdw1z-00BVll-KX
 for jfs-discussion@lists.sourceforge.net; Sat, 14 Nov 2020 13:56:08 +0000
Received: by mail-lf1-f67.google.com with SMTP id a9so17300454lfh.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 14 Nov 2020 05:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SK840U8/7axwAqhuwZnwdljtfw13UYNDip/jhTdp73Q=;
 b=QHmF2viG+Y4d2jk2HOORYZ6CTFij1RQL0l/mF05H1Di+7y3DN+W8QcX5RS40laOXaR
 s60ze7q1SBblKD1nrP8JY88f8gvYRIWsOArxM6tOU9MjgXKgUsu0HMOqp2Fawt2qa5wY
 d7lzSIlr7ELnCwPV+8s7gL512Ed1F7IxRvwKrHvGMg4W5uUzwXJeNOaNSA9T6OK+VNdd
 SeU0nlDaaiAUDr3W9m8VwCYreUyYbcjUv9zS5AQ5+8DE2X+rS2dhKan4rfC0xOGo9H7p
 NqEShjchYPqXMJr4mFqex0Rzkay7VDGgLikZyKqd5c7+QXv1jM+RI3Mc2urxFSfTQI42
 /ucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SK840U8/7axwAqhuwZnwdljtfw13UYNDip/jhTdp73Q=;
 b=jaJHxQ4T9q48JDcDkb8xhqHyv2aLh1skiheSgqWwFHEXr78ceZpWdLPK8rWReGI8Ip
 XxrtNkKta5NJhvsjK3BXE/lKR3IcOxi/wkPd6EKFyh4NcLf+5ucghUjiW+hWcQBIxApL
 1GFu/QV/pzz7fCZZE6l0AUtDFJTAzcJjiJB2D5zrf4jdCez8gTGpyDkm9Jz9gHud5Nmr
 rY/QKlc6qhx9O79FIYszxXPR96phj5wO0S1YB0BHVybou6pmhzHn8XvVKmkI3+gl+OQi
 x1JtZDjLsO3USFojvLClOQUwzQjacgyLQusguZh1F3VbP95SVNEDEPk2zpBI1/EM1XON
 Zy9w==
X-Gm-Message-State: AOAM533F0I/T60S/EsqgVlICk6j2/RnknqCZD+G9iU/Nm5tsb0K+u4wJ
 XwqCISIPh81Jq5hulkKtJSVndaSHLTgESkCm/2I=
X-Google-Smtp-Source: ABdhPJz2k9AQDEvR32M6/p/JJwuWL834gVamLMoXDA4so/uCOxhVKemscRu8l1ercTVEmD0cgpWm4VbdBqgLd9OpiEQ=
X-Received: by 2002:ac2:5301:: with SMTP id c1mr2391288lfh.72.1605362149030;
 Sat, 14 Nov 2020 05:55:49 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XN=cd=_K_2AY9OL7f+HWsazY-nJ81Ufrw4azvkjj-Mpng@mail.gmail.com>
 <e8c8ef27-1f09-40b5-e5e4-facfcc9956dd@oracle.com>
In-Reply-To: <e8c8ef27-1f09-40b5-e5e4-facfcc9956dd@oracle.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sat, 14 Nov 2020 21:55:37 +0800
Message-ID: <CAFcO6XMhrhJXWjRymKUWgFUov6OV7fTk-Nu9Tq=kOyPTMRnTug@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (butterflyhuangxx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kdw1z-00BVll-KX
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

Yes, I have tested the patch, it seem to fix the problem.

Regard,
 butt3rflyh4ck.

On Sat, Nov 14, 2020 at 5:16 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 10/8/20 12:00 PM, butt3rflyh4ck wrote:
> > I report a array-index-out-of-bounds bug (in linux-5.9.0-rc6) found by
> > kernel fuzz.
> >
> > kernel config: https://github.com/butterflyhack/syzkaller-fuzz/blob/master/v5.9.0-rc6-config
> >
> > and can reproduce.
> >
> > the dmtree_t is that
> > typedef union dmtree {
> > struct dmaptree t1;
> > struct dmapctl t2;
> > } dmtree_t;
> >
> > the dmaptree is that
> > struct dmaptree {
> > __le32 nleafs; /* 4: number of tree leafs */
> > __le32 l2nleafs; /* 4: l2 number of tree leafs */
> > __le32 leafidx; /* 4: index of first tree leaf */
> > __le32 height; /* 4: height of the tree */
> > s8 budmin; /* 1: min l2 tree leaf value to combine */
> > s8 stree[TREESIZE]; /* TREESIZE: tree */
> > u8 pad[2]; /* 2: pad to word boundary */
> > };
> > the TREESIZE is totally 341, but the leafidx type is __le32.
>
> Does this patch fix the problem?
>
> jfs: Fix array index bounds check in dbAdjTree
>
> Bounds checking tools can flag a bug in dbAdjTree() for an array index
> out of bounds in dmt_stree. Since dmt_stree can refer to the stree in
> both structures dmaptree and dmapctl, use the larger array to eliminate
> the false positive.
>
> Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
> ---
>  fs/jfs/jfs_dmap.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/jfs/jfs_dmap.h b/fs/jfs/jfs_dmap.h
> index 29891fad3f09..aa03a904d5ab 100644
> --- a/fs/jfs/jfs_dmap.h
> +++ b/fs/jfs/jfs_dmap.h
> @@ -183,7 +183,7 @@ typedef union dmtree {
>  #define        dmt_leafidx     t1.leafidx
>  #define        dmt_height      t1.height
>  #define        dmt_budmin      t1.budmin
> -#define        dmt_stree       t1.stree
> +#define        dmt_stree       t2.stree
>
>  /*
>   *     on-disk aggregate disk allocation map descriptor.
> --
> 2.29.2
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
