Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB275FEAD0
	for <lists+jfs-discussion@lfdr.de>; Fri, 14 Oct 2022 10:47:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ojGLe-0006oj-6W;
	Fri, 14 Oct 2022 08:47:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mudongliangabcd@gmail.com>) id 1ojGLc-0006oc-8L
 for jfs-discussion@lists.sourceforge.net;
 Fri, 14 Oct 2022 08:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kQiJsgQr5TBzKYI/UzuN+aYvAiaOIe2Dysr8E2kN8No=; b=KbuOLqaolzvXhnJx2jxfKR7TWY
 65mqD51BBDQzXmzNp1YnawTMawPiCgIsdfj4kwrB0GMgLoOn5XAzrQccrpYijOXuzSvxUhPAV0tNv
 KYCy8G2ffBBkCfzlSY1kq7w2rCpvZyJOqsp1RR9wohahmjTduWABNaXsinvJbez/UaNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kQiJsgQr5TBzKYI/UzuN+aYvAiaOIe2Dysr8E2kN8No=; b=ZIJmAbk3CTdg/JcDNPpXzLV1Cd
 At1n3E961HSZjwGoQLshRYd/dJNaA/KY2dAtzLjB3LJ4JX0uOWwnV7prCbWLBoy1SEX6fsvYLByL7
 Mgm9dxHF9M2EHUhiBQ33+XPb3Qrr7PBiSFlSCvhy1EkuBNADwVIenvB4seKMJxABR+X8=;
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ojGLb-00029q-3F for jfs-discussion@lists.sourceforge.net;
 Fri, 14 Oct 2022 08:47:16 +0000
Received: by mail-ej1-f51.google.com with SMTP id k2so9030657ejr.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 14 Oct 2022 01:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=kQiJsgQr5TBzKYI/UzuN+aYvAiaOIe2Dysr8E2kN8No=;
 b=P63uH698engtPrPitLKkFMZZDMV9ltLDXjIjOsvY0gG1TKrDXtPn7dvgbOgEnjgm9R
 vuSYj+7APn56QHIOtm36+p8PrdhEdDlePLuKKQ41JfeEt9uhscZxOOVwhoF7aD/aX+4F
 acru0x7EQVj7P7zxe2cxC/EPfom8bo817otFReRYdnFM7lO42OboFdGpOplGuuleM84x
 bBeXvTLxCD0SONDU6AWLTUHji8XkRWRotokcwKP0ZDgpkOH20oCOTHjBEFqaQPbJizqr
 T3lqRO02kKsQQxw0qdkFgTqYdCiZK+yLzVYTJLtCve9RPGupQB8foKWEV6DJuNGceoPg
 9fgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kQiJsgQr5TBzKYI/UzuN+aYvAiaOIe2Dysr8E2kN8No=;
 b=TjlQS39J2W8BuaU/9W342PV89dhcbLV9FrS1q41P+MVpV69qkSzW9tRzeYqw8Vv/9t
 O9Kxm1FdZgDXwVtPnhIOIDpqwk7h0hbIDjYQGqIT65dPz632T/lmPRnLEIJyilsjf0oP
 Jd7H/+jPa2en2zf4L3EJAzG1pcopJJgkAHGZdvvZBBz2TqyJs1breKc3uPLP8Ha8mcBb
 H3ndtJqHIxONDcoRDOJtX4H4Lqfq3drdJFX7KjVcd/q2rFIO2MMHPvJXf1dvPUQy1cE2
 Le/E/FvU0EDeReIT4epL3CNLJGE+mkXqhvmPdbdtHIrm3mjUjCKRWzGz9o7DKPYP3qRV
 wjKw==
X-Gm-Message-State: ACrzQf1o/ssNo9rmc3iu/piom/gsjYWvVQh4c92+W8jbNwCn9NiplmlG
 FLQNKjI94L0s7FcmlGDZ8yfz7aZgWFuqQ5Bt9zo=
X-Google-Smtp-Source: AMsMyM6CVSNNCeKIrx5gVla87CuZzPSu52JpjxtXVE399tVPbQQDzqtkT4pk6H8cORO7yUAcNd05DvkXQO4880fkyvU=
X-Received: by 2002:a17:907:c18:b0:78d:8577:7c30 with SMTP id
 ga24-20020a1709070c1800b0078d85777c30mr2626336ejc.413.1665737225935; Fri, 14
 Oct 2022 01:47:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220929054500.488604-1-dzm91@hust.edu.cn>
 <96566993-e888-6d98-25a6-818dd4f2a327@oracle.com>
In-Reply-To: <96566993-e888-6d98-25a6-818dd4f2a327@oracle.com>
From: Dongliang Mu <mudongliangabcd@gmail.com>
Date: Fri, 14 Oct 2022 16:45:02 +0800
Message-ID: <CAD-N9QWdqwGZZFN02TyT=Ht2Fhe3NyodZPzssFN2n-0_YX8t1Q@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 14, 2022 at 4:55 AM Dave Kleikamp wrote: > > On
 9/29/22 12:44AM, Dongliang Mu wrote: > > From: Dongliang Mu > > > > Syzbot
 found a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mudongliangabcd[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ojGLb-00029q-3F
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
Cc: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com,
 Dongliang Mu <dzm91@hust.edu.cn>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 14, 2022 at 4:55 AM Dave Kleikamp <dave.kleikamp@oracle.com> wrote:
>
> On 9/29/22 12:44AM, Dongliang Mu wrote:
> > From: Dongliang Mu <mudongliangabcd@gmail.com>
> >
> > Syzbot found a crash : UBSAN: shift-out-of-bounds in dbAllocAG. The
> > underlying bug is the missing check of bmp->db_agl2size. The field can
> > be greater than 32 and trigger the shift-out-of-bounds.
>
> The shift is done to a 64-byte value, not 32.
>
> The volume can contain up to 2^43 blocks, which are divided up into 128
> (2^7) aggregate groups, so each AG can have 2^36 blocks, which makes 36
> a valid value for db_agl2size.

Thanks for your explanation. Will send a v2 patch after testing in Syzbot.

>
> >
> > Fix this bug by adding a check of bmp->db_agl2size in dbMount since this
> > field is used in many following functions. Note that, for maintainance,
> > I reorganzie the error handling code of dbMount.
> >
> > Reported-by: syzbot+15342c1aa6a00fb7a438@syzkaller.appspotmail.com
> > Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> > ---
> >   fs/jfs/jfs_dmap.c | 21 +++++++++++++++------
> >   1 file changed, 15 insertions(+), 6 deletions(-)
> >
> > diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> > index 6b838d3ae7c2..4c717f245920 100644
> > --- a/fs/jfs/jfs_dmap.c
> > +++ b/fs/jfs/jfs_dmap.c
> > @@ -155,7 +155,7 @@ int dbMount(struct inode *ipbmap)
> >       struct bmap *bmp;
> >       struct dbmap_disk *dbmp_le;
> >       struct metapage *mp;
> > -     int i;
> > +     int i, err;
> >
> >       /*
> >        * allocate/initialize the in-memory bmap descriptor
> > @@ -170,8 +170,8 @@ int dbMount(struct inode *ipbmap)
> >                          BMAPBLKNO << JFS_SBI(ipbmap->i_sb)->l2nbperpage,
> >                          PSIZE, 0);
> >       if (mp == NULL) {
> > -             kfree(bmp);
> > -             return -EIO;
> > +             err = -EIO;
> > +             goto err_kfree_bmp;
> >       }
> >
> >       /* copy the on-disk bmap descriptor to its in-memory version. */
> > @@ -181,9 +181,8 @@ int dbMount(struct inode *ipbmap)
> >       bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
> >       bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
> >       if (!bmp->db_numag) {
> > -             release_metapage(mp);
> > -             kfree(bmp);
> > -             return -EINVAL;
> > +             err = -EINVAL;
> > +             goto err_release_metapage;
> >       }
> >
> >       bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
> > @@ -194,6 +193,10 @@ int dbMount(struct inode *ipbmap)
> >       bmp->db_agwidth = le32_to_cpu(dbmp_le->dn_agwidth);
> >       bmp->db_agstart = le32_to_cpu(dbmp_le->dn_agstart);
> >       bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
> > +     if (bmp->db_agl2size >= 32) {
>
> I think the right number here is MAXMAPSIZE - L2MAXAG, so
>
>         if (bmp->db_agl2size > (MAXMAPSIZE - L2MAXAG)) {
>
> > +             err = -EINVAL;
> > +             goto err_release_metapage;
> > +     }
> >       for (i = 0; i < MAXAG; i++)
> >               bmp->db_agfree[i] = le64_to_cpu(dbmp_le->dn_agfree[i]);
> >       bmp->db_agsize = le64_to_cpu(dbmp_le->dn_agsize);
> > @@ -214,6 +217,12 @@ int dbMount(struct inode *ipbmap)
> >       BMAP_LOCK_INIT(bmp);
> >
> >       return (0);
> > +
> > +err_release_metapage:
> > +     release_metapage(mp);
> > +err_kfree_bmp:
> > +     kfree(bmp);
> > +     return err;
> >   }
> >
> >


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
