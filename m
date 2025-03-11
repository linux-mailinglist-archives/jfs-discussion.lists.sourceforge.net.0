Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB29A5C33C
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Mar 2025 15:06:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ts0EQ-0001N0-4U;
	Tue, 11 Mar 2025 14:05:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wolffd@comp.nus.edu.sg>) id 1trtge-0003L9-V4
 for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 07:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GWMjfD0bqXflwa6SeJjW8TlCi5/MoE1NlzNxjUf1eT4=; b=V2Iz1/tsbDevVn037FvGtOEYXt
 jtNw16cDN1iRhRX5A4xnLvRLzWUX03zMSZ2gW/vWPbb5Xr5P7EYU4Dc6BvN6K1CJhD5hpJ5iA8xTo
 v6RIp7JFKE6UaIXMhX8HNtkNfNQT7FHYkoIiI2zpvA8s1EMsaQIxVGw2ObOdtSjmK1CU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GWMjfD0bqXflwa6SeJjW8TlCi5/MoE1NlzNxjUf1eT4=; b=QL+5vIvRJLuN8AAVigxoFJ3wwV
 LNZFQn+uqk12hK83G3cNV7Vot50Uv2vuWqV2yO6f3FeOZZmwdxYEtdt1scQq7Wl9kZDFAyw76G1Si
 hXQY4bC/LsV1aLmwWQMV+mjlnxbwwVRRoNvQeEg3hUIoCdMhGRkuyY3L24wjMt/Iw/5M=;
Received: from 84-20.comp.nus.edu.sg ([137.132.84.20]
 helo=smtpgw-1-2.nogo.comp.nus.edu.sg)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1trtgd-0005aw-GQ for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 07:06:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTP id 675A01607D4
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Mar 2025 14:47:31 +0800 (+08)
X-Virus-Scanned: Debian amavisd-new at smtpgw-1-2.comp.nus.edu.sg
Received: from smtpgw-1-2.nogo.comp.nus.edu.sg ([127.0.0.1])
 by localhost (smtpgw-1-2.comp.nus.edu.sg [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-HJJkDYYwaq for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Mar 2025 14:47:31 +0800 (+08)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTPS
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 11 Mar 2025 14:47:31 +0800 (+08)
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3913f546dfdso1585074f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 10 Mar 2025 23:47:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741675649; x=1742280449;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GWMjfD0bqXflwa6SeJjW8TlCi5/MoE1NlzNxjUf1eT4=;
 b=PP5b34m+uX1NT4pp/WZ+IuojmIdozuHHblf8aVPmlW4kvqFGV/CHmTbelsSCg7l6O1
 S0ppLqitXM91ZXzSXj+Pw8NAVBFVeqULFzYQZk3uymwSvdKaMPrvcgnGxcOpRgu9wuXr
 qy1l4AftGZ5Hb9W/oAtnS0KXagk+HynvO3DXSEr380EelSF1NGyL6F4jI9oj8B6JeasD
 Yx1IulQ/h4PX1gKWLZMVqIeMC+z7IxaD8Z9NftaV8y1yAAE5YPVKvjosYQ0fq2aT7L+A
 wzsYsbEqoJfPZrlIza5dFXg/N28E3d6czxZeE1z64baZ4BRZxs9pET8XWM+fMw82ztlO
 UMqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWoWgTRQ2198+3WNhBq8BxV6CJQBY5a5NPspojt8ib6jwLet8JWEUxOlmFBrZHgOcPJ5mUIPH92aPamw5Bvpg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxOtaQUwcUuBF0ZI0f4gdB8nEqDrC7O4cLxqMqdLZ8I7YxPS5Zw
 0coqqipGtvnEMWavbPE58FHIeVl0CPMKk5RxLKh98QnNGe8utvcCOam03W/V2plpAhtUFoOAkI4
 5brLhRrBXvz925pA8sDkLcsKmRrY9PXmM0xGLP5EPevSVouasRp6klJTCI6FVnESBNApcQ/L0x9
 D+zorMlISOOjWxo2XMbBxFS9O72Y4o3xJ6SablPQjZOgfW7iF3hA==
X-Gm-Gg: ASbGncuFAGal8ngiUdI507+BtKMXdGm7VDfF6iCq4nn8vQN4emLhLnugFMy6bTUBHL7
 YxEAL8g9t8p94QgaIfrSZCEkigSGQojHORajM2vuOgEtwRSj9RHSQ6cyH1Ghd8TKsuPb3wn32Qk
 M=
X-Received: by 2002:a05:6000:440e:b0:391:39bd:a381 with SMTP id
 ffacd0b85a97d-3926487d48bmr2145996f8f.30.1741675648667; 
 Mon, 10 Mar 2025 23:47:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8EM8IaihLvMTFsbvl3KUi3jXMLYkC4hdba2Zv468/g6Lm3YccmZJ9Fnjg2UaZhoMColmB8znKRslsbP5faj0=
X-Received: by 2002:a05:6000:440e:b0:391:39bd:a381 with SMTP id
 ffacd0b85a97d-3926487d48bmr2145983f8f.30.1741675648248; Mon, 10 Mar 2025
 23:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
In-Reply-To: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
Date: Tue, 11 Mar 2025 14:47:17 +0800
X-Gm-Features: AQ5f1Jrz-ZkdD9CvdnP4T7yO9UJKcu1QbrAr2pmslL0FGCiaXPNrgZ_Du5EVHRM
Message-ID: <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org, dave.kleikamp@oracle.com
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all, Just checking in on this report. Is there another
 email list I should be using for this issue? Can anyone confirm whether or
 not our fix is acceptable? Thanks again! Dylan 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in sa-accredit.habeas.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [137.132.84.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1trtgd-0005aw-GQ
X-Mailman-Approved-At: Tue, 11 Mar 2025 14:05:18 +0000
Subject: Re: [Jfs-discussion] General Protection Fault / KASAN:
 null-ptr-deref in jfs_ioc_trim
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
From: Dylan Wolff via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dylan Wolff <wolffd@comp.nus.edu.sg>
Cc: Jiacheng Xu <stitch@zju.edu.cn>
Content-Type: multipart/mixed; boundary="===============6205330188330832878=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============6205330188330832878==
Content-Type: multipart/alternative; boundary="000000000000540a1706300b762f"

--000000000000540a1706300b762f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Just checking in on this report. Is there another email list I should be
using for this issue? Can anyone confirm whether or not our fix is
acceptable?

Thanks again!
Dylan

On Tue, Jan 7, 2025 at 4:53=E2=80=AFPM Dylan Wolff <wolffd@comp.nus.edu.sg>=
 wrote:

> Hello kernel developers!
>
> We believe that we have found a concurrency bug in the `fs/jfs` module
> that results in a null pointer dereference. There is a closely related
> issue which has been fixed:
>
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234
>
> ... but, unfortunately, the accepted patch appears to still be susceptibl=
e
> to a null pointer dereference under some interleavings.
>
> To trigger the bug, we think that `JFS_SBI(ipbmap->i_sb)->bmap` is set to
> NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`. This bug
> manifests quite rarely under normal circumstances, but is triggereable wi=
th
> the attached syz program. We've also attached a trace of an execution tha=
t
> leads to the crash (thread id:location). If needed, we can share our setu=
p
> in detail which reproduces the bug with very high probability.
>
> Here's a proposed patch:
>
> ```
> diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
> index 5f4b30503..4b660296c 100644
> --- a/fs/jfs/jfs_discard.c
> +++ b/fs/jfs/jfs_discard.c
> @@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range
> *range)
>         down_read(&sb->s_umount);
>         bmp =3D JFS_SBI(ip->i_sb)->bmap;
>
> -       if (minlen > bmp->db_agsize ||
> +       if (bmp =3D=3D NULL ||
> +           minlen > bmp->db_agsize ||
>             start >=3D bmp->db_mapsize ||
>             range->len < sb->s_blocksize) {
>                 up_read(&sb->s_umount);
> ```
>
> Applying this patch to our kernel locally appears to resolve the issue.
>
> If this looks like it might be a security vulnerability, please let us
> know if there is anything we need to provide for the CVE process.
>
> We would also appreciate attribution for the discovery / fix if applicabl=
e:
> >Reported-by: Jiacheng Xu<stitch@zju.edu.cn>,  Dylan Wolff <
> wolffd@comp.nus.edu.sg>
>
> Environment:
>      Qemu (invocation attached) running a Syzkaller image on an Ubuntu
> 22.04.4 LTS host
> Kernel:
>      HEAD commit: fbfd64d25
>      tree: upstream
>      compiler toolchain: clang-17
>
> Thanks!
> Dylan
>
>

--000000000000540a1706300b762f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>Just checking in on this report. Is there a=
nother email list I should be using for this issue? Can anyone confirm whet=
her or not our fix is acceptable?<br><br>Thanks again!<br>Dylan</div><br><d=
iv class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Tue, Jan 7, 2025 at 4:53=E2=80=AFPM Dylan Wolff &lt;<a href=3D=
"mailto:wolffd@comp.nus.edu.sg">wolffd@comp.nus.edu.sg</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hell=
o kernel developers!<br><br>We believe that we have found a concurrency bug=
 in the `<font face=3D"monospace">fs/jfs</font>` module that results in a n=
ull pointer dereference. There is a closely related issue which has been fi=
xed:<br><br><a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torv=
alds/linux.git/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234" targe=
t=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Dd6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234</a><br><br>... b=
ut, unfortunately, the accepted patch appears to still be susceptible to a =
null pointer dereference under some interleavings.<br><br>To trigger the bu=
g, we think that `<font face=3D"monospace">JFS_SBI(ipbmap-&gt;i_sb)-&gt;bma=
p</font>` is set to NULL in `<font face=3D"monospace">dbFreeBits</font>` an=
d then dereferenced in `<font face=3D"monospace">jfs_ioc_trim</font>`. This=
 bug manifests quite rarely under normal circumstances, but is triggereable=
 with the attached syz program. We&#39;ve also attached a trace of an execu=
tion that leads to the crash (thread id:location). If needed, we can share =
our setup in detail which reproduces the bug with very high probability.<br=
><br>Here&#39;s a proposed patch:<div><br>```<br><font face=3D"monospace">d=
iff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c<br>index 5f4b30503.=
.4b660296c 100644<br>--- a/fs/jfs/jfs_discard.c<br>+++ b/fs/jfs/jfs_discard=
.c<br>@@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_ra=
nge *range)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 down_read(&amp;sb-&gt;s_umount);=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bmp =3D JFS_SBI(ip-&gt;i_sb)-&gt;bmap;<br><=
br>- =C2=A0 =C2=A0 =C2=A0 if (minlen &gt; bmp-&gt;db_agsize ||<br>+ =C2=A0 =
=C2=A0 =C2=A0 if (bmp =3D=3D NULL ||<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 minlen &gt; bmp-&gt;db_agsize ||<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 start &gt;=3D bmp-&gt;db_mapsize ||<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 range-&gt;len &lt; sb-&gt;s_blocksize) {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 up_read(&amp;sb-&gt;s_umount);</font=
><br>```<br><br>Applying this patch to our kernel locally appears to resolv=
e=C2=A0the issue.<div><br>If this looks like it might be a security vulnera=
bility, please let us know if there is anything we need to provide for the =
CVE process.<br><br>We would also appreciate attribution for the discovery =
/ fix if applicable:<br>&gt;Reported-by: Jiacheng Xu&lt;<a href=3D"mailto:s=
titch@zju.edu.cn" target=3D"_blank">stitch@zju.edu.cn</a>&gt;,=C2=A0 Dylan =
Wolff &lt;<a href=3D"mailto:wolffd@comp.nus.edu.sg" target=3D"_blank">wolff=
d@comp.nus.edu.sg</a>&gt;<br><br>Environment:<br>=C2=A0 =C2=A0 =C2=A0Qemu (=
invocation attached) running a Syzkaller image on an Ubuntu 22.04.4 LTS hos=
t<div>Kernel:<br>=C2=A0 =C2=A0 =C2=A0HEAD commit: fbfd64d25<br>=C2=A0 =C2=
=A0 =C2=A0tree: upstream<br>=C2=A0 =C2=A0 =C2=A0compiler toolchain: clang-1=
7</div><div><br>Thanks!<br>Dylan<br><br></div></div></div></div>
</blockquote></div>

--000000000000540a1706300b762f--


--===============6205330188330832878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6205330188330832878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============6205330188330832878==--

