Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48A7CEFE
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:44:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvSl-0006ZM-6a; Wed, 31 Jul 2019 20:44:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+samsung@kernel.org>) id 1hsvSj-0006Z9-VI
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+a5BC2SMQTZyNnosj2+NVoaE/cuHtdCJLsTbfMI7CM8=; b=AEUjGR4e9vNM9amepG/NKd9TjH
 SxckHfoh5N8A7nFgEAX/OWeyJlu3eH/Rx5HQhPVihCRaXc0PoyshP6GI3pIC1HlW4vnENRE4YFXZI
 sXtxQXRc/QDrVNgcvSb04YVF6670Xd9UmL/7t00OpOnyuWN2IiHhPmsGfgjbPcMrS5D8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+a5BC2SMQTZyNnosj2+NVoaE/cuHtdCJLsTbfMI7CM8=; b=PSqzBTjH8T4Q3ZqgHrQz8s71YY
 2A8xJEUE+b3FjjraFToQdUGqEKOlbWI8zR+1Jgp54EOSIN0AP0NnYu4DY3isx8R5ZnjarnBqr9xTw
 zbhBula0JTZwY7CAFZyB/B8s+zUThZKXRtUsjjwMzc1U+f/aq4KSyMpodT1F8WBB701A=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsvSi-0041io-7H
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+a5BC2SMQTZyNnosj2+NVoaE/cuHtdCJLsTbfMI7CM8=; b=cd0EZcQkx68qz1mV7MZC2uM8w
 P5cYOfzRqT4jAj1XeIa5cZwCKRpuEARrsXGCDxCq8sgpCmoEJ8VyMoB1ZGWIv3KkGkC8AIFMmG3zu
 rlsmWUq3FLoiDUPohjPULvC4w5BLIzEmbwgXzpFT+L80k80QNHwktIQFstvBvlBiAagdTYKLP7kd6
 mgvL4iD+sHmcbJxX4pbsqTYJFd9WsDq0iZww0LtIbpC3Rwlt6XCZ+VcKY2odTaplLXORSAqBC7jw+
 ktYQ73C/T59Q53D5UHvn8GEbIRSj5leo+helE+/aJGkkXgpqWFvenf2ZTIwIz7KLtjIJb7x/x8Xk3
 8x9hawtXg==;
Received: from [191.33.152.89] (helo=coco.lan)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvB0-0001Q8-KC; Wed, 31 Jul 2019 20:26:22 +0000
Date: Wed, 31 Jul 2019 17:26:13 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190731172613.32d65ad8@coco.lan>
In-Reply-To: <20190731202007.GI4369@sirena.org.uk>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <20190731141734.1fa9ce64@lwn.net>
 <20190731202007.GI4369@sirena.org.uk>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsvSi-0041io-7H
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Em Wed, 31 Jul 2019 21:20:07 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Wed, Jul 31, 2019 at 02:17:34PM -0600, Jonathan Corbet wrote:
> > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:  
> 
> > > As promised, this is the rebased version of the patches that were not applied
> > > from the /26 patch series because you had merge conflicts.
> > > 
> > > They're all based on your docs-next branch, so should apply fine.
> > > 
> > > The first one fixes all but one error with a broken reference.
> > > 
> > > The only broken reference right now is due to a DT patch with was not
> > > accepted (no idea why), but whose driver is upstream.  
> 
> > All but 5/6 applied, thanks.  
> 
> Oh, I still hadn't reviewed this version of the SPI stuff :(

It is basically the one sent on that /26 patch series, just rebased
on the top of docs-next.

> There were outstanding questions about where it was going to get moved
> to but if I read the diff correctly it looks like it didn't actually get
> moved in the end?

Yeah, it doesn't have the move. My understanding from our discussions
is that we didn't reach a conclusion.

In any case, I can send a separate patch with the move part once
we reach an agreement about what's the best way to proceed (or you
can do it directly, if you prefer so).

Thanks,
Mauro


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
