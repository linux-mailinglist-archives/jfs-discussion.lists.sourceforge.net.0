Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1456A4154DB
	for <lists+jfs-discussion@lfdr.de>; Thu, 23 Sep 2021 02:54:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mTD04-0001Ql-Td; Thu, 23 Sep 2021 00:54:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mTD03-0001Qb-Pk
 for jfs-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 00:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JtxnXX0Zz37aXmCGF7NCAeAU4u0TOULNgnuj5xvQ+vk=; b=ial/ccroiZoKBnHkuAgfhRXgsT
 PMNSSpYJHAE9lgB2mYo85e8x3jq5lXY0BEfQDBvGSJdB5ei9ZvLQIpDi2P4Jzth6Zp5mCEt52cuXt
 tyZU4jNPWmX9d30L13yGt9fTcaZ8pQW9XPh1AD+NzXTKOEfXAX6g4GM38pSTy3eaXjNY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JtxnXX0Zz37aXmCGF7NCAeAU4u0TOULNgnuj5xvQ+vk=; b=IssGlqsoLWiJAv33TxTPpjor//
 B+9jnJzxXm/pNV0ZGLZGZuBDjsG5YHum0aM3hsuQWlfNzc7T/dBJu7hU+ubh2LPqxhFuiNf6H50xR
 s1Lvp7ewyM0NeIOyyfRtHXFSZlDVskFhDMT32rN+tpf5kGPx4GsJuOmT/14tMofGCaHQ=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mTD02-0006pb-Ts
 for jfs-discussion@lists.sourceforge.net; Thu, 23 Sep 2021 00:54:07 +0000
Received: by mail-ed1-f47.google.com with SMTP id co2so16775143edb.8
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 22 Sep 2021 17:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JtxnXX0Zz37aXmCGF7NCAeAU4u0TOULNgnuj5xvQ+vk=;
 b=OtSRzojsbDGJ56UGIJBgr9gyujkLp+c/QQl3+lNLl3SgCXsChOEcx768sAMmVXdVjh
 NNa6Uq3vdsdlcx4t4Jeqs3wbKrvFbxmz3hQMyGLD87769JM8U02SpVwvXWWZy94015uS
 +TtKehkAK7Is5rg4RvzKibR4jSfka0CF85HH/yVyqlCiFW5uhrydLXlbhK++t7VcFFWW
 Sefz8AigQJhZeuGFyyX2ZKHP2234npMSWRK6dHX8BAfGkdDcgyMimXoNsrkNIxkST6nA
 gBSToDdMtX+YxUEPhjC4kmR3bQivs65WXuNCwZxaQ+noE2pSu2dUZkNhiGe82pwECHKD
 b6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JtxnXX0Zz37aXmCGF7NCAeAU4u0TOULNgnuj5xvQ+vk=;
 b=s/yK+jZBzKWUfLhZW+fdh7Z6N/+0FuF3hTatxPzS7Lr+d69t2+89ikPjMzhcGg0s8a
 dsjIs1uMIljih298FI7ndvz0U2lfma2UQCpNW1785M4Qz1bL3Bbuv5o2KGhkJ1satnkJ
 sZmEstgu0JRe3xBKjSwrVN/U985G/nVIOzI6hs4tY+8Gj7MsmfqmAUcJluBZAVx+sHTC
 i7Dh7M7LTm9Nsslb+WRZSoI4885WQ/i509r8ftpPJacUmiEdwInaew/mWznTF6DiaiJr
 eV3R+1EQtkU3SAdGQn5ztz1AlUevKBYTq+3pcCbiSKO0IS+/YJn+u3R3deQELzrK/6bk
 bnpg==
X-Gm-Message-State: AOAM5317Q+yEP4FIPupapcKDaRg2GJeydTCQ2wWBi5K5ziERmOSAdGPF
 pt5eHo2NgrjAxB2qGsIQ3/IrBXbPS/Nl+coZrU4=
X-Google-Smtp-Source: ABdhPJw7pFRqE/fMdJsyDgu/hzVen2ey6wN3BNuq6I3GBBupfD6dNPoupABjjqanjL5LdIA70omMoxuMveXAVTJVZT8=
X-Received: by 2002:a17:906:974d:: with SMTP id
 o13mr2149832ejy.563.1632358440491; 
 Wed, 22 Sep 2021 17:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
In-Reply-To: <20210904023800.1813036-1-mudongliangabcd@gmail.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Thu, 23 Sep 2021 08:53:34 +0800
Message-ID: <CAD-N9QV5OMe0ryEKaUYkwmNyOtu+Sgi7h2B0JFSK5Jj9bbQPQQ@mail.gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Any update on this thread? On Sat, Sep 4, 2021 at 10:38 AM
 Dongliang Mu wrote: > > In jfs_mount, when diMount(ipaimap2) fails, it goes
 to errout35. However, > the following code does not free ipaimap2 allocated
 by diReadSpeci [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mTD02-0006pb-Ts
Subject: Re: [Jfs-discussion] [PATCH v2] JFS: fix memleak in jfs_mount
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
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Any update on this thread?

On Sat, Sep 4, 2021 at 10:38 AM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
>
> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> the following code does not free ipaimap2 allocated by diReadSpecial.
>
> Fix this by refactoring the error handling code of jfs_mount. To be
> specific, modify the lable name and free ipaimap2 when the above error
> ocurrs.
>
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
> v1->v2: change "return rc" to "goto out"; fix one coding style
>  fs/jfs/jfs_mount.c | 51 ++++++++++++++++++++--------------------------
>  1 file changed, 22 insertions(+), 29 deletions(-)
>
> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> index 5d7d7170c03c..aa4ff7bcaff2 100644
> --- a/fs/jfs/jfs_mount.c
> +++ b/fs/jfs/jfs_mount.c
> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
>          * (initialize mount inode from the superblock)
>          */
>         if ((rc = chkSuper(sb))) {
> -               goto errout20;
> +               goto out;
>         }
>
>         ipaimap = diReadSpecial(sb, AGGREGATE_I, 0);
>         if (ipaimap == NULL) {
>                 jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>                 rc = -EIO;
> -               goto errout20;
> +               goto out;
>         }
>         sbi->ipaimap = ipaimap;
>
> @@ -99,7 +99,7 @@ int jfs_mount(struct super_block *sb)
>          */
>         if ((rc = diMount(ipaimap))) {
>                 jfs_err("jfs_mount: diMount(ipaimap) failed w/rc = %d", rc);
> -               goto errout21;
> +               goto err_ipaimap;
>         }
>
>         /*
> @@ -108,7 +108,7 @@ int jfs_mount(struct super_block *sb)
>         ipbmap = diReadSpecial(sb, BMAP_I, 0);
>         if (ipbmap == NULL) {
>                 rc = -EIO;
> -               goto errout22;
> +               goto err_umount_ipaimap;
>         }
>
>         jfs_info("jfs_mount: ipbmap:0x%p", ipbmap);
> @@ -120,7 +120,7 @@ int jfs_mount(struct super_block *sb)
>          */
>         if ((rc = dbMount(ipbmap))) {
>                 jfs_err("jfs_mount: dbMount failed w/rc = %d", rc);
> -               goto errout22;
> +               goto err_ipbmap;
>         }
>
>         /*
> @@ -139,7 +139,7 @@ int jfs_mount(struct super_block *sb)
>                 if (!ipaimap2) {
>                         jfs_err("jfs_mount: Failed to read AGGREGATE_I");
>                         rc = -EIO;
> -                       goto errout35;
> +                       goto err_umount_ipbmap;
>                 }
>                 sbi->ipaimap2 = ipaimap2;
>
> @@ -151,7 +151,7 @@ int jfs_mount(struct super_block *sb)
>                 if ((rc = diMount(ipaimap2))) {
>                         jfs_err("jfs_mount: diMount(ipaimap2) failed, rc = %d",
>                                 rc);
> -                       goto errout35;
> +                       goto err_ipaimap2;
>                 }
>         } else
>                 /* Secondary aggregate inode table is not valid */
> @@ -168,7 +168,7 @@ int jfs_mount(struct super_block *sb)
>                 jfs_err("jfs_mount: Failed to read FILESYSTEM_I");
>                 /* open fileset secondary inode allocation map */
>                 rc = -EIO;
> -               goto errout40;
> +               goto err_umount_ipaimap2;
>         }
>         jfs_info("jfs_mount: ipimap:0x%p", ipimap);
>
> @@ -178,41 +178,34 @@ int jfs_mount(struct super_block *sb)
>         /* initialize fileset inode allocation map */
>         if ((rc = diMount(ipimap))) {
>                 jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
> -               goto errout41;
> +               goto err_ipimap;
>         }
>
> -       goto out;
> +       return rc;
>
>         /*
>          *      unwind on error
>          */
> -      errout41:                /* close fileset inode allocation map inode */
> +err_ipimap:
> +       /* close fileset inode allocation map inode */
>         diFreeSpecial(ipimap);
> -
> -      errout40:                /* fileset closed */
> -
> +err_umount_ipaimap2:
>         /* close secondary aggregate inode allocation map */
> -       if (ipaimap2) {
> +       if (ipaimap2)
>                 diUnmount(ipaimap2, 1);
> +err_ipaimap2:
> +       /* close aggregate inodes */
> +       if (ipaimap2)
>                 diFreeSpecial(ipaimap2);
> -       }
> -
> -      errout35:
> -
> -       /* close aggregate block allocation map */
> +err_umount_ipbmap:     /* close aggregate block allocation map */
>         dbUnmount(ipbmap, 1);
> +err_ipbmap:            /* close aggregate inodes */
>         diFreeSpecial(ipbmap);
> -
> -      errout22:                /* close aggregate inode allocation map */
> -
> +err_umount_ipaimap:    /* close aggregate inode allocation map */
>         diUnmount(ipaimap, 1);
> -
> -      errout21:                /* close aggregate inodes */
> +err_ipaimap:           /* close aggregate inodes */
>         diFreeSpecial(ipaimap);
> -      errout20:                /* aggregate closed */
> -
> -      out:
> -
> +out:
>         if (rc)
>                 jfs_err("Mount JFS Failure: %d", rc);
>
> --
> 2.25.1
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
