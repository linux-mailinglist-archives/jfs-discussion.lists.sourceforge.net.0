Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8517CECB
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:38:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvMT-0005d6-BL; Wed, 31 Jul 2019 20:38:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <corbet@lwn.net>) id 1hsvKz-0006FL-Js
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fBWHR/1tK3Ys3zYbQuobkDDZIjCDnGegWu2vpLanQik=; b=m8jna9sKvllf/+3/earLszfHx1
 TJQuTYAAAVMF8YoBe67Lw0X6uDKovh0PkeSauxf+Gtz9nCBk0Xk3w1VvloRm4gr120bAZf81xuL6a
 MgsbGC8MgZe0uVV53BtYuvOLvr5XHAxDtvr3zLmj/lwiptbwrMXe0MJ64c2mSmUKoBn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fBWHR/1tK3Ys3zYbQuobkDDZIjCDnGegWu2vpLanQik=; b=V/DPon8p8bumYlxvkT7gDKmI88
 Ctp8oN2ztRMWX6+YoEcdASKVCCp6tLshwtxUTbWrvLASmPzSnFjSF4fkoQOOYzrtJ3F1TYKbKb62R
 08jbzJJg+3lQXJ1ShoHj8v6o8EFGdVXOtrg7HO6BNADQi+ykccMHwM+piacrGWQobDJY=;
Received: from ms.lwn.net ([45.79.88.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsvKy-0041HZ-AM
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:36:41 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 7F83A7DA;
 Wed, 31 Jul 2019 20:17:35 +0000 (UTC)
Date: Wed, 31 Jul 2019 14:17:34 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190731141734.1fa9ce64@lwn.net>
In-Reply-To: <cover.1564603513.git.mchehab+samsung@kernel.org>
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsvKy-0041HZ-AM
X-Mailman-Approved-At: Wed, 31 Jul 2019 20:38:11 +0000
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
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, samba-technical@lists.samba.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-iio@vger.kernel.org,
 linux-spi@vger.kernel.org, Steve French <sfrench@samba.org>,
 Rob Herring <robh+dt@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, 31 Jul 2019 17:08:47 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> As promised, this is the rebased version of the patches that were not applied
> from the /26 patch series because you had merge conflicts.
> 
> They're all based on your docs-next branch, so should apply fine.
> 
> The first one fixes all but one error with a broken reference.
> 
> The only broken reference right now is due to a DT patch with was not
> accepted (no idea why), but whose driver is upstream.

All but 5/6 applied, thanks.

jon


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
