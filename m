Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6067CECA
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 Jul 2019 22:38:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hsvMT-0005cz-A2; Wed, 31 Jul 2019 20:38:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robh+dt@kernel.org>) id 1hsv6e-00083w-MG
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GMnofiosiOJQTEgmgghEndjqPBJ5uC1QXKwPaHffOhE=; b=GAyBXywGJnrpfPu3R2yMjc4Byy
 brpcp26N/3aJ9wdSLdZdFX++Cu15Oc9xKxgW/e93LFXoqyMChXu+UFMmReTfuYYQjur7+13I0fTtr
 yzIOJ3IlghbhafMWqMSM5bsdddiSsF6v9zaFXzZJ1tveky4+uuKqVMiJX9sHjanxnJak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GMnofiosiOJQTEgmgghEndjqPBJ5uC1QXKwPaHffOhE=; b=TYTI20VYCpaz9hkmNx32QIdqNl
 M8plCqfXmWedm/bO9PsNXdHEWYDImbPIolMjnOsd/Zob73fAJ13bifue0zogYic0er52rD5i6yz+H
 t5M4pYglEzObyV6CT0pv0EUPNUiaQHZl0UwQp6dWG4Af/FjmUKFjd7pdBgNWC53ldMkU=;
Received: from [198.145.29.99] (helo=mail.kernel.org)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsv6a-005cNk-LL
 for jfs-discussion@lists.sourceforge.net; Wed, 31 Jul 2019 20:21:52 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07989208E4
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 Jul 2019 20:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564604493;
 bh=uPV3P01fdDXwMC2cp3sSm5uScorHAgvNqHFvPCSEGX4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AEnAskS6xAAvTRE0lKbqhHqm56UPT/l0aF8ey/7glcr1N4YxT9JBi+CufNHLY6dDK
 gzD2JGkqICh5d4yd9yN7h5CuWmeyu/4es5cE9nipVVG28YHfKtkHayDfsuYW4Jc48e
 LXKJbg+r1reEDYBM7XGPCH1lAOlDkOcUNDLRhtYY=
Received: by mail-qk1-f171.google.com with SMTP id d15so50181697qkl.4
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 Jul 2019 13:21:32 -0700 (PDT)
X-Gm-Message-State: APjAAAWZ4G+pzkBrjI6nHa3w3MtKVO+PDmfT4Jzods/furo5VFJHWbD7
 Kmg0ncsQBTJFBnMbjYUEQ3iHn5MObfwE4RH0Tg==
X-Google-Smtp-Source: APXvYqx/FUJ2et44J7TQ9mbGJUlcFyES8MnWGe+AQ/ZmcKGbi55yNvCflF0msvkyq6b1XqZwq80IkL9tQOi07uZbE2M=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr17417772qke.393.1564604492244; 
 Wed, 31 Jul 2019 13:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564603513.git.mchehab+samsung@kernel.org>
 <5b4fae5978d309641fa8ba233a9efe2b48201cd6.1564603513.git.mchehab+samsung@kernel.org>
In-Reply-To: <5b4fae5978d309641fa8ba233a9efe2b48201cd6.1564603513.git.mchehab+samsung@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 31 Jul 2019 14:21:19 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+n9g5d7GkJRJJohfQywzuQNbOam=FbsDCaQu86Z+4zfg@mail.gmail.com>
Message-ID: <CAL_Jsq+n9g5d7GkJRJJohfQywzuQNbOam=FbsDCaQu86Z+4zfg@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsv6a-005cNk-LL
X-Mailman-Approved-At: Wed, 31 Jul 2019 20:38:11 +0000
Subject: Re: [Jfs-discussion] [PATCH 1/6] docs: fix a couple of new broken
 references
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
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, jfs-discussion@lists.sourceforge.net,
 devicetree@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jul 31, 2019 at 2:08 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
>
> Those are due to recent changes. Most of the issues
> can be automatically fixed with:
>
>         $ ./scripts/documentation-file-ref-check --fix
>
> The only exception was the sound binding with required
> manual work.
>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>  Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt | 2 +-

Acked-by: Rob Herring <robh@kernel.org>

>  MAINTAINERS                                                 | 4 ++--
>  drivers/hwtracing/coresight/Kconfig                         | 2 +-
>  fs/jfs/Kconfig                                              | 2 +-
>  fs/ufs/Kconfig                                              | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
