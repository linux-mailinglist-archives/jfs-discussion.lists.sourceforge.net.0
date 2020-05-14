Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3BB1D2692
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 May 2020 07:13:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jZ6Ap-0002Hn-Vg; Thu, 14 May 2020 05:12:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rong.a.chen@intel.com>) id 1jZ6Ao-0002Hg-TO
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 05:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oPBjqr/ENCMR+vMp3jz3xQC/3CxAeXlxP0UZqWSrgzc=; b=f7cXTgQQbZoiJocO656Ji7vCL5
 c19HJ/VgDC2jHXCFveFJLJOMEGIssmWBosXtxE1Ghr7y6xmCTuFaI03vpBytaUQbOYg0M4w7FQlCq
 x6bA30jFjpzM0uFpfa+1doc3YHBWx4bu7bY+g5xsF8Mc+uPBNjpCDA2tRo8mE4dV/PnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oPBjqr/ENCMR+vMp3jz3xQC/3CxAeXlxP0UZqWSrgzc=; b=lXfXxpV2nvLNVtWaxP2rIunQXl
 IOMpsmqewrfvtu6JQLro2VyFsYs9hS+BSSPP6XYpOQUm7abP4OBoPJuc595pootUvoQEH2E4Xj0xj
 RgOzy0rQv79o+3D30csDuwVqFgjNdb/jQ7CJhc9ZYij+lomZBTRdl0JB/JF39VHXJt7E=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZ6An-00EsYz-0g
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 05:12:46 +0000
IronPort-SDR: j9RwHfgCYoAZi/rrUGNX30Fk2d4e3493t+EEzqvqlt2+N+pO1Kps3fTpih+PxsEwddV/4FC4Mw
 rPNs/M9xZn1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 22:12:39 -0700
IronPort-SDR: +AqZpAh+ZgEX+8D7aMBDV9LzVC160bZ2wR+gC48uAOo39K9V47xOvvJiJGvpLpE7ZvgtmTXWYl
 sfm9U3fu2gtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="437771590"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
 by orsmga005.jf.intel.com with ESMTP; 13 May 2020 22:12:36 -0700
To: Christian Kujau <lists@nerdbynature.de>
References: <20200512030929.GA5770@shao2-debian>
 <alpine.DEB.2.22.395.2005132123020.14542@trent.utfs.org>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <5d4fbe21-7959-d53f-76c5-ed0299d8db23@intel.com>
Date: Thu, 14 May 2020 13:12:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.395.2005132123020.14542@trent.utfs.org>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jZ6An-00EsYz-0g
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 5/14/20 12:27 PM, Christian Kujau wrote:
> On Tue, 12 May 2020, kernel test robot wrote:
>> FYI, we noticed a -71.8% regression of netperf.Throughput_total_tps due to commit:
> As noted in this report, netperf is used to "measure various aspect of
> networking performance". Are we sure the bisect is correct? JFS is a
> filesystem and is not touching net/ in any way. So, having not attempted
> to reproduce this, maybe the JFS commit is a red herring?
>
> C.

Hi,

The commit also causes -74.6% regression of will-it-scale.per_thread_ops:

in testcase: will-it-scale
on test machine: 8 threads Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz with 16G memory
with following parameters:

	nr_task: 100%
	mode: thread
	test: unlink2
	cpufreq_governor: performance
	ucode: 0x21

I'll send another report for this regression.

Best Regards,
Rong Chen



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
