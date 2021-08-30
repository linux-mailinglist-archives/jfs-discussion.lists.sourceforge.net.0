Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E63FB24B
	for <lists+jfs-discussion@lfdr.de>; Mon, 30 Aug 2021 10:16:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mKcSG-0001Oo-QG; Mon, 30 Aug 2021 08:15:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mudongliangabcd@gmail.com>) id 1mKcSE-0001OX-U4
 for jfs-discussion@lists.sourceforge.net; Mon, 30 Aug 2021 08:15:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PULVD8Tt/i1F2Zu50bq8VYUQ0dJK4dOLAdcFqlBPDxM=; b=lByB4/r7xzmChQOTmFR0YR+ol6
 /4/hyp0I1oBY0K6klrqzIyWueoBuuU/7DaYyCZh845UDksByOUrx2UHoVYYs0vMA9yCGG38+gkBfm
 H9AgCX9lExfVrCi6OoxxyCzdnCxdgniEZ5C7YqoGsjctcivAQ5Pkqu50SdfKZ5yYHGqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PULVD8Tt/i1F2Zu50bq8VYUQ0dJK4dOLAdcFqlBPDxM=; b=NcJHgErYDV42cWgx6OIEyrZdom
 UsIToedV8M7beptkFc/GMHBpAqQXH4BMEpgVn5cu1895j8PraRzq72a318iaIAEbVmujGDdvv2azG
 /FQu2yW3xFZzzXTTGm0GYy/HSGvz/K8df/dv2mph0Uw2SWcBgZY1965bTkI9lyX2kAbk=;
Received: from mail-ed1-f49.google.com ([209.85.208.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mKcSA-00082q-4d
 for jfs-discussion@lists.sourceforge.net; Mon, 30 Aug 2021 08:15:42 +0000
Received: by mail-ed1-f49.google.com with SMTP id g22so20331239edy.12
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 30 Aug 2021 01:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PULVD8Tt/i1F2Zu50bq8VYUQ0dJK4dOLAdcFqlBPDxM=;
 b=Bm2659KE37r3KLmF5KXzNzVgCMphfHBJ4AeM4UEHLCfKRPtyqlp277y+Cd/zwVThis
 QKWU2s+hDCRpLAkRSIrV+qMTqKJKbqUg0+6Re5wlWxubRAXK0XoAzgJK7FdbudpZJOFp
 ntSnU75MSeK566FnGjFw8pt8T2Wq6n5owWONTAMWnaUpvZoa2vMwTVhDL6rf71TGeTkH
 h6N631M0VCAaMNlNo1cN6TevdkhVI2yxLC58Xw7Usx5e/mt6mG/a6oo0SKp49K1BPpFH
 Bw9GoJhsUZqlXIstlKFLuyq4JRfsRgYILL7l/Ri4x+VB4VL09OQMX2OpnE6sLwBeqQZm
 MB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PULVD8Tt/i1F2Zu50bq8VYUQ0dJK4dOLAdcFqlBPDxM=;
 b=CQ+jl6Qgca3BxITU4qQVaTl5GzKKW6aflo5KB/kzChLI2F9qycdhkbVIbs1JEKPsY7
 1klP8YKaC7fpz3ITi4ODmiyNZfxwRa2BfDRpQmb1e79jYCRn4IESDlFa3M0amazOXQwx
 /YObcaRTH/IuJkJogxxqhJFj97j9+xE3BGMu2QX+Vq9kWTr8S3ZUIsoOu0hyqj4YH5Lv
 O8rzNi+axOWaPPvOrT4BS3k58Dq9Wq47cq3KH0bSuKNh9omKRi3YtoofI4yU5JUDyqFp
 mqGXyip2EcoV7Oushb/T5Xbmq/Lf3BXfXbsoIAf+iJ9ctrXQB4INc+zZSNGv7Sr92m+/
 ylAg==
X-Gm-Message-State: AOAM530GMxtpoySqX6ZGOZcx2dbUYP5/v2A5yfuINnrU9vLFnxiFlZtb
 Sr8eEEf8E7yOHpFEkN8ElpY/LrEcHjHH29ttU3M=
X-Google-Smtp-Source: ABdhPJyYDZGYZSNfbAWTuOL+qZ9is47kppZD33wj9EyK9D6ofHPz3x0/QBFlb/K4tvwggtTHJSXZAqiEWvWm7du2+eU=
X-Received: by 2002:aa7:c88e:: with SMTP id p14mr23257354eds.174.1630311331667; 
 Mon, 30 Aug 2021 01:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210818102612.864127-1-mudongliangabcd@gmail.com>
In-Reply-To: <20210818102612.864127-1-mudongliangabcd@gmail.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Mon, 30 Aug 2021 16:15:05 +0800
Message-ID: <CAD-N9QUQ1p_Zu1zdL3ZOtxmyw3z4CR3K3VL2FkLP=aJYhT8cUQ@mail.gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mudongliangabcd[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mKcSA-00082q-4d
Subject: Re: [Jfs-discussion] [PATCH] JFS: fix memleak in jfs_mount
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

On Wed, Aug 18, 2021 at 6:26 PM Dongliang Mu <mudongliangabcd@gmail.com> wrote:
>
> In jfs_mount, when diMount(ipaimap2) fails, it goes to errout35. However,
> the following code does not free ipaimap2 allocated by diReadSpecial.
>
> Fix this by refactoring the error handling code of jfs_mount. To be
> specific, modify the lable name and free ipaimap2 when the above error
> ocurrs.
>

Hi maintainers,

any comment on this patch?

> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
>  fs/jfs/jfs_mount.c | 53 +++++++++++++++++++---------------------------
>  1 file changed, 22 insertions(+), 31 deletions(-)
>
> diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
> index 5d7d7170c03c..638a4ecc4069 100644
> --- a/fs/jfs/jfs_mount.c
> +++ b/fs/jfs/jfs_mount.c
> @@ -81,14 +81,14 @@ int jfs_mount(struct super_block *sb)
>          * (initialize mount inode from the superblock)
>          */
>         if ((rc = chkSuper(sb))) {
> -               goto errout20;
> +               return rc;
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
> @@ -178,41 +178,32 @@ int jfs_mount(struct super_block *sb)
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
> -               diUnmount(ipaimap2, 1);
> -               diFreeSpecial(ipaimap2);
> -       }
> -
> -      errout35:
> -
> -       /* close aggregate block allocation map */
> +       if (ipaimap2) diUnmount(ipaimap2, 1);
> +err_ipaimap2:
> +       /* close aggregate inodes */
> +       if (ipaimap2) diFreeSpecial(ipaimap2);
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
