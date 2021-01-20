Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AAF2FDA3C
	for <lists+jfs-discussion@lfdr.de>; Wed, 20 Jan 2021 20:58:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l2JcE-0003nj-BI; Wed, 20 Jan 2021 19:58:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <butterflyhuangxx@gmail.com>) id 1l2JcB-0003na-Hj
 for jfs-discussion@lists.sourceforge.net; Wed, 20 Jan 2021 19:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ya1LpK8/RXmf6DXoqwnu4lj4b1TvWkLPwrDTMUqdfN4=; b=aPMI+3pfXRBvrz6OzkWkOc3T6U
 m2n2WdNDDw8Zloxyd4YVDUjyO2jdtB10/xXKbGHRI7WwubKG4vs2Ss3cU5KlOpQ+k1/DY9CkjMyQF
 xYLGc1WV3Ecp4cOGGyiCzq/fg1d+m2ZzK+J73qU9BNC+BgDT7EHRgybb6p5pPZgFNQRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ya1LpK8/RXmf6DXoqwnu4lj4b1TvWkLPwrDTMUqdfN4=; b=Y+1mwzHKWrwYsk95d7FRBnXmTY
 uYx1yk7t898XLlzhLbSvUtVqu7ERnR5Tm000Oi//3vC4fR0HiigFPd4fqztGPSHih9gL04ePEevoy
 1KBRowqsheRdw6yuBlpH6WrcNynyP5IfLOaPMQ1vyqgw9rqaZEiru7fWir2IFmEPbuyo=;
Received: from mail-yb1-f177.google.com ([209.85.219.177])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l2Jc7-002O8A-3G
 for jfs-discussion@lists.sourceforge.net; Wed, 20 Jan 2021 19:58:03 +0000
Received: by mail-yb1-f177.google.com with SMTP id k4so20630856ybp.6
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 20 Jan 2021 11:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ya1LpK8/RXmf6DXoqwnu4lj4b1TvWkLPwrDTMUqdfN4=;
 b=YHVP0fFZTcVomhP8RD9OiXpFhB+5PLESu8BFdFDW0Q7a6onwnLIICmTSzADYmL0cOZ
 xxy+XkQVQMoB3XPv6PYKYsLgbWPjq/w3URgj/RK4sklLbZ44pdmz8WZTxFhE58GVCmH5
 +be9JC1nCx9pc0IyA8pQfCzPPJo+FtFitcd9RaRhO0NztcFpRaihJA3K2I/FCT0fM7yW
 hrZ1vtGyV4+xI/+n2HhjE+Hf/MmYxBuWpi/K0bTnjWyrl4kr30atZLkF05ISiey5hfId
 O0biVxUnq2vzb+9ouatgNK8m9zsZBf9rH+25f469cWinWHEYJiq4v3LoZAP7/ab70Zsr
 Akpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ya1LpK8/RXmf6DXoqwnu4lj4b1TvWkLPwrDTMUqdfN4=;
 b=fXxtIY99jmqfm1ThvwAI374iCOJfGWXZ05PVrb8UeOZpOksYdpcqub8F1TElZ8QdIB
 2i/pAnPGJeor8FVvIrIC2q350YUtBCqio3zrL2mwY/JFiZMDwx1mVzAXl9CjV1f+eDqo
 mMcUcGWScKRZfpxCRcr3NNdxwwR2+TBIih2GTb6mHmQD0g4SRoYpH06iSlEUxvcQ9t3Y
 8kZFQyPJ5FD5/RQ2qajNmzfYF7eZ4huIJTO2fejQJMZEM+GlN6gA9zIlSoP/kvH6Ydtr
 EDnBo9GkybvHS42eGAU3rCx4Hdp7OA6/X2A+SMSRbhbRK7DxYaC88tNUY58Y15VRjbsb
 hjvQ==
X-Gm-Message-State: AOAM531JeTIdWvoBogYxLO0ZthDicEl79M16uFOudZX29W6WTAJBBdl0
 SvgR2YO1ebl/IT+UF/OAsC+qvssFnQN1MUU5W8Q=
X-Google-Smtp-Source: ABdhPJxGQQnZL9zTpV6vNovU0E1SMjAfecQoZtovzYm5OeBSJVHvNlGoGtLCZJZjlL93a0aqpvdjkBnvmSfDpgAywPY=
X-Received: by 2002:a25:3bd2:: with SMTP id
 i201mr15745831yba.302.1611172666185; 
 Wed, 20 Jan 2021 11:57:46 -0800 (PST)
MIME-Version: 1.0
References: <CAFcO6XN=cd=_K_2AY9OL7f+HWsazY-nJ81Ufrw4azvkjj-Mpng@mail.gmail.com>
 <e8c8ef27-1f09-40b5-e5e4-facfcc9956dd@oracle.com>
 <CAFcO6XMhrhJXWjRymKUWgFUov6OV7fTk-Nu9Tq=kOyPTMRnTug@mail.gmail.com>
 <298485e2-01de-048d-5515-44ac254167e4@oracle.com>
 <CAFcO6XOvx2W1EvN7PORomgYj4U7kcyzjBC=OiQp9bfRZ33gBMg@mail.gmail.com>
 <225bea89-73ed-5227-3ca1-d74fc86e986f@oracle.com>
In-Reply-To: <225bea89-73ed-5227-3ca1-d74fc86e986f@oracle.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Thu, 21 Jan 2021 03:57:35 +0800
Message-ID: <CAFcO6XPunmpMRk03eVzbG3HwPj6oFrRSu1CCW_vMGihU33GKOw@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (butterflyhuangxx[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.177 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l2Jc7-002O8A-3G
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

This was assigned CVE-2020-27815 via redhat.

Regards.
butt3rflyh4ck.


On Fri, Nov 20, 2020 at 11:01 PM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 11/20/20 3:52 AM, butt3rflyh4ck wrote:
> > You are welcome and have you submitted the patch to linux upstream ?
> > If you have no time do that and I can do it.
>
> Yes, it's in linux-next now. I'll push it to upstream in the v5.11 window.
>
> Shaggy
>
> >
> > Regard,
> >  butt3rflyh4ck.
> >
> > On Sun, Nov 15, 2020 at 12:17 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> >>
> >> Thanks for reporting and testing this!
> >>
> >> Shaggy
> >>
> >> On 11/14/20 7:55 AM, butt3rflyh4ck wrote:
> >>> Yes, I have tested the patch, it seem to fix the problem.
> >>>
> >>> Regard,
> >>>  butt3rflyh4ck.
> >>>
> >>> On Sat, Nov 14, 2020 at 5:16 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
> >>>>
> >>>> On 10/8/20 12:00 PM, butt3rflyh4ck wrote:
> >>>>> I report a array-index-out-of-bounds bug (in linux-5.9.0-rc6) found by
> >>>>> kernel fuzz.
> >>>>>
> >>>>> kernel config: https://github.com/butterflyhack/syzkaller-fuzz/blob/master/v5.9.0-rc6-config
> >>>>>
> >>>>> and can reproduce.
> >>>>>
> >>>>> the dmtree_t is that
> >>>>> typedef union dmtree {
> >>>>> struct dmaptree t1;
> >>>>> struct dmapctl t2;
> >>>>> } dmtree_t;
> >>>>>
> >>>>> the dmaptree is that
> >>>>> struct dmaptree {
> >>>>> __le32 nleafs; /* 4: number of tree leafs */
> >>>>> __le32 l2nleafs; /* 4: l2 number of tree leafs */
> >>>>> __le32 leafidx; /* 4: index of first tree leaf */
> >>>>> __le32 height; /* 4: height of the tree */
> >>>>> s8 budmin; /* 1: min l2 tree leaf value to combine */
> >>>>> s8 stree[TREESIZE]; /* TREESIZE: tree */
> >>>>> u8 pad[2]; /* 2: pad to word boundary */
> >>>>> };
> >>>>> the TREESIZE is totally 341, but the leafidx type is __le32.
> >>>>
> >>>> Does this patch fix the problem?
> >>>>
> >>>> jfs: Fix array index bounds check in dbAdjTree
> >>>>
> >>>> Bounds checking tools can flag a bug in dbAdjTree() for an array index
> >>>> out of bounds in dmt_stree. Since dmt_stree can refer to the stree in
> >>>> both structures dmaptree and dmapctl, use the larger array to eliminate
> >>>> the false positive.
> >>>>
> >>>> Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
> >>>> ---
> >>>>  fs/jfs/jfs_dmap.h | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/fs/jfs/jfs_dmap.h b/fs/jfs/jfs_dmap.h
> >>>> index 29891fad3f09..aa03a904d5ab 100644
> >>>> --- a/fs/jfs/jfs_dmap.h
> >>>> +++ b/fs/jfs/jfs_dmap.h
> >>>> @@ -183,7 +183,7 @@ typedef union dmtree {
> >>>>  #define        dmt_leafidx     t1.leafidx
> >>>>  #define        dmt_height      t1.height
> >>>>  #define        dmt_budmin      t1.budmin
> >>>> -#define        dmt_stree       t1.stree
> >>>> +#define        dmt_stree       t2.stree
> >>>>
> >>>>  /*
> >>>>   *     on-disk aggregate disk allocation map descriptor.
> >>>> --
> >>>> 2.29.2
> >>>>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
