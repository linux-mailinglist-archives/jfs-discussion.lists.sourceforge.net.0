Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6AE7CED3
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:39:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvN9-0000Qo-8H; Wed, 31 Jul 2019 20:38:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@sirena.org.uk>) id 1hsvN8-0000QW-Du
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eSpZl/myp0wLmres0SzdL8uz08rnblNQITo3VV+tXno=; b=kaH40nwfUjOAimsMzqcF63JK/Y
 yK0PhEPWC7mSc1j0hpo8wdTlq9Mm2+0+bO+ACIxFVaHicZDlCVBlGDi/75v5dwKVYcRUFGvVCAR+O
 7iXIf1oPUqDKdT9BRtuWmNxn2lnkykyvncz9wKQB1MGDPWbCJUO83vok0CqZ6Vgarqcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eSpZl/myp0wLmres0SzdL8uz08rnblNQITo3VV+tXno=; b=cuiC4+Dad61MACNQp9tmmz9B6N
 /jUtTJz9njBQSqvi3TBrRooztjMpRtNWFd9CqPIzPrd61AJS2PcE9C4VpQM1YVYi03+GPAS1ZJZCl
 k6wJiyv5cotCvfP4rYoFWxaClwIGpHnL1Cp5oYJq0QwSgEt1yGORw8fJbdWQAyX8EpA4=;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsvN6-005dIK-SU
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eSpZl/myp0wLmres0SzdL8uz08rnblNQITo3VV+tXno=; b=YYhiErzLfdL7neEK7d0phFEhA
 9rYVeR7x7t8t6paB3ZYVvcpsMo/itLyxCB2hOJT8gnOe2xOO8iAjeWRiY7cTpKhSE6/BN2x8m4rMQ
 cSB16hNa+oZ9qF3mqcbLxgvqdCuQVoTjgi1w17GQcvLfcOoOipIPzkfbVKuqdLoY5fX+c=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsv4y-0003F9-G4; Wed, 31 Jul 2019 20:20:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 634FD2742C99; Wed, 31 Jul 2019 21:20:07 +0100 (BST)
Date: Wed, 31 Jul 2019 21:20:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190731202007.GI4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
MIME-Version: 1.0
In-Reply-To: <20190731141734.1fa9ce64@lwn.net>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsvN6-005dIK-SU
Subject: Re: [Jfs-discussion] [PATCH 0/6] ReST conversion patches not
 applied yet
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dave Kleikamp <shaggy@kernel.org>,
 alsa-devel@alsa-project.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Evgeniy Polyakov <zbr@ioremap.net>, linux-cifs@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============8154675193727239405=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============8154675193727239405==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9s922KAXlWjPfK/Q"
Content-Disposition: inline


--9s922KAXlWjPfK/Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 02:17:34PM -0600, Jonathan Corbet wrote:
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> > As promised, this is the rebased version of the patches that were not a=
pplied
> > from the /26 patch series because you had merge conflicts.
> >=20
> > They're all based on your docs-next branch, so should apply fine.
> >=20
> > The first one fixes all but one error with a broken reference.
> >=20
> > The only broken reference right now is due to a DT patch with was not
> > accepted (no idea why), but whose driver is upstream.

> All but 5/6 applied, thanks.

Oh, I still hadn't reviewed this version of the SPI stuff :(

There were outstanding questions about where it was going to get moved
to but if I read the diff correctly it looks like it didn't actually get
moved in the end?

--9s922KAXlWjPfK/Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1B9/YACgkQJNaLcl1U
h9Bg/wf5AdzUWJa+NJteGVMxcv2AdvS61I9agmCR6mMbPERTL3lRkGvteyyk4FqS
OLlGCoSv8ytbJJ7mVGt28aBLCB7cHeDQGGmdf7OM3nJGun9yy4mmhOUIWxgjWRCl
SgO2qZpfOz121zfa2goqOfdNzbPOotjeuIyVJxvNH0NLLvRjjDZ1+4rXUjvMZf26
cVK4dXIu7+m0Kh6N6EFG9vmpNjbh23zfkd89kH8bMBGaOHdhj/3cRmCw2ZxK8Uiz
Z+xwRCyTI0CIegyUp0ZKheAqubruDFR7y0F9sYcI5KR+w0cDrfxYjOUgZa2JJKn7
Rdr1TAWXS/LG/aYR09ZGPHQsIsDKIw==
=V4AT
-----END PGP SIGNATURE-----

--9s922KAXlWjPfK/Q--


--===============8154675193727239405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8154675193727239405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============8154675193727239405==--

