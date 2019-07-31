Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BDE7CECE
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:38:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvMa-0000Oe-PD; Wed, 31 Jul 2019 20:38:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@sirena.org.uk>) id 1hsvLw-0006Hn-1N
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8zgVGeJDIycQcvkIadKAWE4jNOD7aBA1sv5eo5/l2Q=; b=i3ravoV+RlgDHSWu/cWzBMdSwh
 pn9yRf3e4rE7jiyvp6sj+tZuLiQBcMvqKwnlwm8lrCapxyUFrhokZlRI9W1yYMYYDDhd6h/BWDaxZ
 tcjNLqhqs6elJwdEre6tOxJhE7Q6ysLOTFj0RzOs1x60HrwAo3cgxqVlBoZc2Z73pMvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f8zgVGeJDIycQcvkIadKAWE4jNOD7aBA1sv5eo5/l2Q=; b=X21MTCZe2Yg4U9fxY6j3aAIVd/
 Y1S++/92KH7JI0ofnjoyp4BrmGSxIwAwKjP9zkCoKb6t5I5GyyRg6zXj0yMSlVY0/ODU1zLhXqviz
 9TfR1Q2vDrcdutw9CqC+uEV7BldgKhHzPl+VCYePRX1Ka6ucu44dXAxOgrt/Pdvtce2E=;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsvLr-005dDo-Hi
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8zgVGeJDIycQcvkIadKAWE4jNOD7aBA1sv5eo5/l2Q=; b=Fo4hgxN3HVjwMzMGY2TUs4nJk
 cYu5gBnxRALeeciuagRuGTeUesgj1mimsQykYiW1FAdV1oM3wAnq9yRimGHqQysqyzNi1rQ3ACukp
 vYGcU2hR5CrMFdGLmmtsrnirZeyRYdOWP3DBo1fOOy+Ovre+VB8+uoagIh7GPnYlxLWEk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsvLV-0003HI-JJ; Wed, 31 Jul 2019 20:37:13 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C34E02742C99; Wed, 31 Jul 2019 21:37:12 +0100 (BST)
Date: Wed, 31 Jul 2019 21:37:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190731203712.GJ4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
 <20190731172613.32d65ad8@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20190731172613.32d65ad8@coco.lan>
X-Cookie: FEELINGS are cascading over me!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.3 (/)
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
X-Headers-End: 1hsvLr-005dDo-Hi
X-Mailman-Approved-At: Wed, 31 Jul 2019 20:38:20 +0000
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Evgeniy Polyakov <zbr@ioremap.net>,
 linux-cifs@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Corbet <corbet@lwn.net>,
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
Content-Type: multipart/mixed; boundary="===============8630995941742392041=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============8630995941742392041==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XigHxYirkHk2Kxsx"
Content-Disposition: inline


--XigHxYirkHk2Kxsx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 31, 2019 at 05:26:13PM -0300, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > There were outstanding questions about where it was going to get moved
> > to but if I read the diff correctly it looks like it didn't actually get
> > moved in the end?

> Yeah, it doesn't have the move. My understanding from our discussions
> is that we didn't reach a conclusion.

Yes, that was my understanding too which was why I was surprised to see
this going in.  This is OK then, I'd have acked it.

> In any case, I can send a separate patch with the move part once
> we reach an agreement about what's the best way to proceed (or you
> can do it directly, if you prefer so).

I'm not likely to do anything without someone sending patches, I'm not
clear on the utility of the move with the current division of the
manuals.  I don't know if it makes sense to have an embedded developer's
manual as well?

--XigHxYirkHk2Kxsx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1B+/cACgkQJNaLcl1U
h9Ccawf2NvrLW0ujC5HwkDxagYC2dfnUGm4OOyP/LcS7ufD9vxwdAh08IDJFyHJv
4skkK8AdqWOxNms4e9NRiQE51vul7GMBtbp3YezYEiaaB3tMTrWe2rHSEp10OQmH
5WnnpB7KKnUS3UBTwvFRzI1mGWz+klXpzy50z3hsX9UXUArVoqyDRtSY0YDF3+7k
UNhXw0y2taeDMGRzZnOTDxQkejK13T42Oo79xbzylHww8x1vVqV2s4xLTqn2zaN4
W0DIoJIGec2Ewe6JPUio9xvsURtWmWOet6jFLRZO9oiO6uJqrvQde50F6siwwFgY
JMTn2OFfPMPUZVF4ugqAE7qxQaHM
=etK7
-----END PGP SIGNATURE-----

--XigHxYirkHk2Kxsx--


--===============8630995941742392041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8630995941742392041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============8630995941742392041==--

