Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF257D05A
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 23:56:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hswZa-0002bs-2N; Wed, 31 Jul 2019 21:55:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@sirena.org.uk>) id 1hswZY-0002bX-1g
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 21:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K/tOdg0rARIHNKt8myQdNk7juboEm6U9R00/FeIUiBE=; b=ZNLC1xSRAN+lLR59H6y4TbEskT
 0x1g0tTTH5D5Kz3y04TQwq8GMj5qdRVqKJRbgknwI92EXrjrtJddH32qkfyuvzrbQWnPjWJ+XmVx1
 XqyXlgQP729tKMq5+Hy27ivfm57tXje8suATb6j3buXzap9ifoNlT5dZCv21Wf8uGixA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K/tOdg0rARIHNKt8myQdNk7juboEm6U9R00/FeIUiBE=; b=d7j9qR+S0URXgb8XZaVIkbsmZ4
 7K13KdX3K3Cz+w37ykk/klMEomhs+TflcVn3iUsZYykcG8Q4gESsHXl9hgCqg3+2YRlQI3P+c4PbC
 gBAiR+2mBc8GcrpeS96VuW4V4lMbZDJQY3trkSzCt2tWYPzzebYtVVg0ytgQWHMmU+gI=;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hswZW-00491C-7I
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 21:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K/tOdg0rARIHNKt8myQdNk7juboEm6U9R00/FeIUiBE=; b=dAQCdVcqawi/p92YlttDZTR93
 BKyG7tTLWgF7ROCBKJ78mPeMReOpPz03DvX3MgsE3fL4jZKpXbSgEfnsqgHzMIJoSh2RNJNUt/7Vs
 W4pmxcdPzOCef23B1cmjFfttX03YC386eRlZje3tRqBKZnkd81Qs+16ww3Bey4vn/dVho=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hswZ4-0003OG-Ci; Wed, 31 Jul 2019 21:55:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1A3322742C6C; Wed, 31 Jul 2019 22:55:17 +0100 (BST)
Date: Wed, 31 Jul 2019 22:55:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190731215516.GM4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
 <20190731172613.32d65ad8@coco.lan>
 <20190731203712.GJ4369@sirena.org.uk>
 <20190731182729.01c98cd3@coco.lan>
MIME-Version: 1.0
In-Reply-To: <20190731182729.01c98cd3@coco.lan>
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
X-Headers-End: 1hswZW-00491C-7I
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
Content-Type: multipart/mixed; boundary="===============8207679102731755914=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


--===============8207679102731755914==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iKKZt69u2Wx/rspf"
Content-Disposition: inline


--iKKZt69u2Wx/rspf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2019 at 06:27:29PM -0300, Mauro Carvalho Chehab wrote:

> Meanwhile, if someone needs something that it is at the wrong book, he
> can just use some search tool to seek what he needs, no matter on
> what book the relevant information is stored.

OTOH it might be weird for the intended audience of the book.

> Mark Brown <broonie@kernel.org> escreveu:

> > I don't know if it makes sense to have an embedded developer's
> > manual as well?

> Yeah, that's a good question.=20

> Jon is planning todo a documentation track at LPC. One of the things
> that should be discussed, IMO, is how we'll organize the books.

I'll be at Plumbers, not sure what the schedule's looking like yet
though.

--iKKZt69u2Wx/rspf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1CDkQACgkQJNaLcl1U
h9DmyQf8CbO6RT3vDVCTbWB0f/yKJ/A87r+D9XnXG94SH0Vqj3KAl/HFsPpl4gyU
1t9Uo9ZtFC8lSFh29z5fxpIzNkfsanBjnTrJS1lxOvU+DgmoTfXV5+2xa3rel1E0
oOzMumEUJLWQmAQIaSzObUMvLTHaHZXE9UwveI9WkjfE0k7lsrK4vKzotxGDUk1a
6B/LdVb+NH3ME369z6GL2hpH6SkNc0jCRYj4PcGud8PTKBqHim7kBI3AeE51lFUV
Dsr7zD6gH+cbj/GXdXApIDJvlR8bH6LLM/dakss84cM6CvJoD/pd4z9fn2kmUkVY
5tMO7f2i3x9slM6yQ78bDwGSrn8XIg==
=1tp/
-----END PGP SIGNATURE-----

--iKKZt69u2Wx/rspf--


--===============8207679102731755914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8207679102731755914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============8207679102731755914==--

