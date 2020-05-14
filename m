Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFA91D25E0
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 May 2020 06:28:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jZ5TH-0000Jd-OP; Thu, 14 May 2020 04:27:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lists@nerdbynature.de>) id 1jZ5TF-0000JW-Vg
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 04:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=djDn5ShX0AyobnmAh3KJMyFXVfLC22oXoGqtwcFLYDw=; b=Don6dirrex9b8gVDoAwc7+GsfV
 DpogMY3S3IjwIoscg/O1xKj0n0Yi3zsRS2+ONr8p0OHORHoVsEjJ8inSVfaMtK9rHdkY+TCM43+Ru
 q6ntXR1vk/G6xUuW3giqZbzsFtl5C2FjTjO3+ZTv+lkqDOqa++mMvrm06XP/EoDpHKnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=djDn5ShX0AyobnmAh3KJMyFXVfLC22oXoGqtwcFLYDw=; b=YSjHUe37dJMGwtjsI72kArBEXK
 vLkbSUtPUk/1KkHvYwM4bNtL68DYezUToLMB3Z6zD5U34be3gr8e92UgAcdDCXnuwvpZOVbw3tD1H
 ehpXz/3pd/7nOKjsb3zV598e+LrDpbfHY2/1QLMIMrzKV7bbtZ/xztWjZWJD7lE7jvuA=;
Received: from trent.utfs.org ([94.185.90.103])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZ5TD-006LmE-7t
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 04:27:45 +0000
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id 4BDE463A86;
 Thu, 14 May 2020 06:27:26 +0200 (CEST)
Date: Wed, 13 May 2020 21:27:26 -0700 (PDT)
From: Christian Kujau <lists@nerdbynature.de>
To: kernel test robot <rong.a.chen@intel.com>
In-Reply-To: <20200512030929.GA5770@shao2-debian>
Message-ID: <alpine.DEB.2.22.395.2005132123020.14542@trent.utfs.org>
References: <20200512030929.GA5770@shao2-debian>
User-Agent: Alpine 2.22 (DEB 395 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jZ5TD-006LmE-7t
Subject: Re: [Jfs-discussion] [fs] 05c5a0273b: netperf.Throughput_total_tps
 -71.8% regression
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
 linux-kernel@vger.kernel.org, lkp@lists.01.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Markus.Elfring@web.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 12 May 2020, kernel test robot wrote:
> FYI, we noticed a -71.8% regression of netperf.Throughput_total_tps due to commit:

As noted in this report, netperf is used to "measure various aspect of 
networking performance". Are we sure the bisect is correct? JFS is a 
filesystem and is not touching net/ in any way. So, having not attempted 
to reproduce this, maybe the JFS commit is a red herring?

C.
-- 
BOFH excuse #50:

Change in Earth's rotational speed


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
