Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 622406C37D5
	for <lists+jfs-discussion@lfdr.de>; Tue, 21 Mar 2023 18:10:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pefUr-0008Jv-4w;
	Tue, 21 Mar 2023 17:10:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <broonie@kernel.org>) id 1pefUm-0008JV-FT
 for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 17:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMMBdaBU6yDrBXlhTuj5kCrIJO/9Anoju3GgagkTzHc=; b=NUeat3Z0ov2bF6LPtmSmOnkMAl
 RzF3qbAKt4sXwhCipINHISZGoEaFIbHxppax7XrMIhWbWKuzjr51232oNmmP93egN4Bb78eU3NEV3
 SHensUWJbAeH2iNE7gXvdLJ/Nm5hUaT/n2H6s57YT+fanet3SAKaV0VshduEydGzqqpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UMMBdaBU6yDrBXlhTuj5kCrIJO/9Anoju3GgagkTzHc=; b=A4npKzsLeHMI2eLZ5dPWjoBBlj
 6fW1T2gBrVtKZ2WvVrsoppYFPWeAXLZqh9QVK9o3G5YIEpeg9VjhXCyCsP/DNQUhZGxZsaQ2bRZgL
 5ChB4CqFVu58yJdBrAxJBtyxlr2pSGCKOH37fVkFfZXA6HsUuFTchLLhLthQ3sl7QHkI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pefUi-0001nQ-9R for jfs-discussion@lists.sourceforge.net;
 Tue, 21 Mar 2023 17:10:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DCEC861D0F;
 Tue, 21 Mar 2023 17:09:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21E23C433EF;
 Tue, 21 Mar 2023 17:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679418590;
 bh=kdWqS/e+sKonowSJQi5knjG8RtTeulUae8t8lT/tj94=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZgP/zney0RxkfxiYC0h0uNFKINgVFhMRkTFoDjmxpyVIimrPvegj7UxYkRjG86RG+
 4Ucse6+U0toZ5epVETfe6mlwEKHyODjgRn4liysLMficvDLpDgLKk8tCVPGQyAdDoZ
 2rSFOupBs0aOwgaD4YASFB01x1OOq/07EQ4C1x70DfUhlljbEvwY0Iyq9Ydeu+rr/f
 DbHXuTXspAQXbNC7puuXYHlLpml2S+TGs3YxeKPyzaNsyECIkhqKNboa1u/IxoCpGH
 Ag+47bafIxmFwW21pA+alZjwI8ddcy/NfkKhpUel7FxEEL6h8mE4vmmsI9JCDm9+3x
 XH1d2qvmIN0dg==
Date: Tue, 21 Mar 2023 17:09:44 +0000
From: Mark Brown <broonie@kernel.org>
To: syzbot <syzbot+9f06ddd18bf059dff2ad@syzkaller.appspotmail.com>
Message-ID: <2d0114ce-a811-47e9-9a76-8c7a80f1faed@sirena.org.uk>
References: <000000000000698e5d05f76c0adf@google.com>
MIME-Version: 1.0
In-Reply-To: <000000000000698e5d05f76c0adf@google.com>
X-Cookie: Will it improve my CASH FLOW?
X-Spam-Score: -2.7 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 21, 2023 at 10:04:46AM -0700, syzbot wrote: >
 The issue was bisected to: > > commit a0b6e4048228829485a43247c12c7774531728c4
 > Author: Charles Keepax <ckeepax@opensource.cirrus.com> > Date: Thu Jun
 23 12:52:28 2022 +0000 > > ASoC: cx20442: Remo [...] 
 Content analysis details:   (-2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pefUi-0001nQ-9R
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: invalid-free in
 sys_mount
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 ckeepax@opensource.cirrus.com, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, willy@infradead.org, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org
Content-Type: multipart/mixed; boundary="===============1505451205916253633=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============1505451205916253633==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UhOUWIYICTHnIC7N"
Content-Disposition: inline


--UhOUWIYICTHnIC7N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 21, 2023 at 10:04:46AM -0700, syzbot wrote:

> The issue was bisected to:
>=20
> commit a0b6e4048228829485a43247c12c7774531728c4
> Author: Charles Keepax <ckeepax@opensource.cirrus.com>
> Date:   Thu Jun 23 12:52:28 2022 +0000
>=20
>     ASoC: cx20442: Remove now redundant non_legacy_dai_naming flag

> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D12756e1cc8=
0000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=3D11756e1cc8=
0000
> console output: https://syzkaller.appspot.com/x/log.txt?x=3D16756e1cc80000

This does not seem especially credible for the backtrace provided:

>  slab_free mm/slub.c:3787 [inline]
>  __kmem_cache_free+0xaf/0x2d0 mm/slub.c:3800
>  __do_sys_mount fs/namespace.c:3596 [inline]
>  __se_sys_mount fs/namespace.c:3571 [inline]
>  __x64_sys_mount+0x212/0x300 fs/namespace.c:3571
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd

which is nowhere near ASoC, let alone that specific driver.

--UhOUWIYICTHnIC7N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmQZ5NcACgkQJNaLcl1U
h9BJBgf/WJnuTPyzPxNZcVE/Y2Nn4WhuqOMTenRwekqMToG4fEK99ITA1NYnWBRy
ixCUajNCuBvf2X6YmjYiNsf79Nio8JVdamUSEpDV5mHq0zpN4B6txrZCSm1FFXL9
nrHe02bAEoaYdrLAS8/mYGQRckp8A7cJYEZnzeC1wo43Mk3qbFrnuezKi52VRUNv
2wGPCVCXAlp7yEDfTObNGAAOg6m6009JBioTcQq9IeCog99a7oFYud7kQhvFebA8
K7PDgAbUAY+WD9bE0ba/Xg3P6xjpq7KpEW+SIck1UpsrKpLJlK54kP9eXgMzwhRx
fPddOZeXHclJfKKPwlcYKI6yoZeDsw==
=uJQW
-----END PGP SIGNATURE-----

--UhOUWIYICTHnIC7N--


--===============1505451205916253633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1505451205916253633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============1505451205916253633==--

