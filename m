Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A4F5F88C3
	for <lists+jfs-discussion@lfdr.de>; Sun,  9 Oct 2022 04:03:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ohLeh-0000OH-Dy;
	Sun, 09 Oct 2022 02:03:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mudongliangabcd@gmail.com>) id 1ohLeg-0000OA-2p
 for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Oct 2022 02:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e0px72rYv17eGGLFJrNQTSqOtbGfg8k58Qe4LfuI8U0=; b=XAkwHBof1bqi/g7STClFScQX9Q
 VOdlr7j9GaEFuj4IjsWbjaOnbLNK2LKU3mmLRfhPjlALu9YnA5vaDTWQ74l7nv4nWIZUXvd4J+c+L
 h1hdk5fEPb8JpMaufs2RXQqpC543IQ1LKtTsTkucEjms0qByehUUrHi8rRlxc3S4JBNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e0px72rYv17eGGLFJrNQTSqOtbGfg8k58Qe4LfuI8U0=; b=O6j4DD3s8wIBrFflEu2Y9p9B/p
 nUwOBHaiFSXUFwc7TUHbnSbak/OOb2/RaqWW8e5yzvtrigoTWt27i3QEqxlVu/O44r7yvyIKtIeJt
 rKsTpoc5hDla9WV1CU+2kh1j3C2zEbWKQSBFz7xW+DHkZGkp1lvjib5LeHCNT6fS0vdw=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohLeb-0005Y2-Fb for jfs-discussion@lists.sourceforge.net;
 Sun, 09 Oct 2022 02:03:01 +0000
Received: by mail-ej1-f45.google.com with SMTP id ot12so18597737ejb.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 08 Oct 2022 19:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=e0px72rYv17eGGLFJrNQTSqOtbGfg8k58Qe4LfuI8U0=;
 b=imEpIP/YLhwVcq9RoKj5OQ1UkgBsbwbD1XoyG84N39uIr5nzjo2YL4Undbv+tpr0C0
 OkbVtk4VmWLHalhe8722TkKWoKVgTyhNaIlFpjsEpH0f5clr/Z3GCYDgmAV5xZUlyeal
 b6x30XmspvHtDHfSP6H06t1chXqDaZxCU9ldKwjtUxdqke/s8IjvXUGTgmBaoVWMbuFf
 8fI0IwNw2264U1m4hlVcPhzR5PxVnRMy/RxVbJPrbbaT1n4qvfF/meOxMMFl+VGtQMt5
 Wkmfu2njgfpNMHjnuhQvxNqM5GaRYRcdKpyHoDbwH6N6JAblzFHBzOshXdG838OOvU17
 QYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=e0px72rYv17eGGLFJrNQTSqOtbGfg8k58Qe4LfuI8U0=;
 b=Q9JyfrCwVTIot/hGJwmFJnsYyKA21as/j3/neJgi50mU0pt2HwW9vidMCeuwuWEj/j
 7CoK4kzQ6+8Rt8yx+Dac2rn5B7+m/0OTiPVxGQQkI3SylonvRSIBE/ppsMo3cF4FhgBt
 OKevU06d92l4vd8wb4bv3dFPUkkSErNzJuFvlCBSYsvv1TIoNYnt5z9wy9+v9BNKGY1x
 d5qh03lYFJhxT3NMHpmGPj3ZygTA7v75FpwyT5E7s4361Vk5+y9+lgmVbos3bogzQ7UU
 gTGcfosOPD0s5FuPdePF8Pzs9IPTE4IG9V95/wrAvDvr79kKZu4I3MGwRXxVXMr+lmKN
 9/ZQ==
X-Gm-Message-State: ACrzQf2f5ZELkP/dskm8CGMPazn8Y2UUm0aoC7Bmw2dht4Dy76NiHj0W
 +mNVTO4ey7vX3zZ6/gRuHtjG7JdRh6+YvLJoyTE=
X-Google-Smtp-Source: AMsMyM6HZHMRjuWUkkYNJdmK7rGdkCV9J0AAV0p8GsIVBCNxIoU+XcfgeRh8fg7DiyvmfSqNngyuwEQzPOaM/iHQ848=
X-Received: by 2002:a17:906:fd8d:b0:780:997:8b7b with SMTP id
 xa13-20020a170906fd8d00b0078009978b7bmr9671021ejb.635.1665280970954; Sat, 08
 Oct 2022 19:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220929054500.488604-1-dzm91@hust.edu.cn>
In-Reply-To: <20220929054500.488604-1-dzm91@hust.edu.cn>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Sun, 9 Oct 2022 10:00:48 +0800
Message-ID: <CAD-N9QXODN4xjOg3a3chs0yxfXfAO8pY+yud0Den+1padxGoLA@mail.gmail.com>
To: Dongliang Mu <dzm91@hust.edu.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 29, 2022 at 1:47 PM Dongliang Mu wrote: > > From:
 Dongliang Mu > > Syzbot found a crash : UBSAN: shift-out-of-bounds in
 dbAllocAG.
 The > underlying bug is the missing check of bmp->db_ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.45 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ohLeb-0005Y2-Fb
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fix shift-out-of-bounds in
 dbAllocAG
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
Cc: Dave Kleikamp <shaggy@kernel.org>,
 syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Sep 29, 2022 at 1:47 PM Dongliang Mu <dzm91@hust.edu.cn> wrote:
>
> From: Dongliang Mu <mudongliangabcd@gmail.com>
>
> Syzbot found a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The
> underlying bug is the missing check of bmp->db_agl2size. The field can
> be greater than 32 and trigger the shift-out-of-bounds.
>
> Fix this bug by adding a check of bmp->db_agl2size in dbMount since this
> field is used in many following functions. Note that, for maintainance,
> I reorganzie the error handling code of dbMount.
>
> Reported-by: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
>  fs/jfs/jfs_dmap.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 6b838d3ae7c2..4c717f245920 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -155,7 +155,7 @@ int dbMount(struct inode *ipbmap)
>         struct bmap *bmp;
>         struct dbmap_disk *dbmp_le;
>         struct metapage *mp;
> -       int i;
> +       int i, err;
>
>         /*
>          * allocate/initialize the in-memory bmap descriptor
> @@ -170,8 +170,8 @@ int dbMount(struct inode *ipbmap)
>                            BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
>                            PSIZE, 0);
>         if (mp == NULL) {
> -               kfree(bmp);
> -               return -EIO;
> +               err = -EIO;
> +               goto err_kfree_bmp;
>         }
>
>         /* copy the on-disk bmap descriptor to its in-memory version. */
> @@ -181,9 +181,8 @@ int dbMount(struct inode *ipbmap)
>         bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
>         bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
>         if (!bmp->db_numag) {
> -               release_metapage(mp);
> -               kfree(bmp);
> -               return -EINVAL;
> +               err = -EINVAL;
> +               goto err_release_metapage;
>         }
>
>         bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
> @@ -194,6 +193,10 @@ int dbMount(struct inode *ipbmap)
>         bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
>         bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
>         bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
> +       if (bmp->db_agl2size >= 32) {
> +               err = -EINVAL;
> +               goto err_release_metapage;
> +       }
>         for (i = 0; i < MAXAG; i++)
>                 bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
>         bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
> @@ -214,6 +217,12 @@ int dbMount(struct inode *ipbmap)
>         BMAP_LOCK_INIT(bmp);
>
>         return (0);
> +
> +err_release_metapage:
> +       release_metapage(mp);
> +err_kfree_bmp:
> +       kfree(bmp);
> +       return err;
>  }
>

ping?

>
> --
> 2.35.1
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
