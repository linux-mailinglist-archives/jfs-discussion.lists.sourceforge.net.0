Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5A56CF734
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:32:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfGt-00056D-MS;
	Wed, 29 Mar 2023 23:32:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfGr-00055z-9y for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xGK1fR4AJk4u+9DybbTgcw+CN81GSRVKlqiyvFs5Dp8=; b=IvXxrVl2oCZr0rf3QnL6PmjEex
 o2rtL8oZD7Vgk6rbWi+hZNA1NwaeaFk/USfEQ9eOjK0IZqE3VbhAVRaw9nAemn53SGfyz3FCkxf9j
 JMrkP6et70m/gaauM4P4sH+hYYnVl09CRanNCFfmDFjbdC0arkEHhGUzRZHAdp0lGj68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xGK1fR4AJk4u+9DybbTgcw+CN81GSRVKlqiyvFs5Dp8=; b=IvACMfvGxSbZpa6Tt4vwkPLcxQ
 eSrHtXB7EMkmqfD4pHpW//bT9ikI/4yT1SOyhta39nKdrO6Ko6b4tHBn4B61lB5oRnyv0UHEXrzAK
 yo0CJH9pZBOfWTTCR1ExseVFsbzvDka4fNiKNcOV+dBSqE2fBojBeRcmjDgHXSMHsqn8=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfGp-0001Qx-Rb for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132719; x=1711668719;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+kVHS+U6z9asf4h5hbfmudX0RZseimMtPqZrPjZ6sRo=;
 b=pWVJ5fMnQaQk0IPiGbx5KX3tyMIT0DcnY/R5HyH7d2+vjY0zE1QcxHMe
 lgNUUzhLRdVfOXSZ5BFXJJ3CEP/XtUL9VhpNbA80PH7oNBIypcFRxsrdC
 ZEdSV6gV4oJh3jTgtwvqk3eHJdDxG+hrgIP98CZ0bMR2RfTzlNP3U6rxm
 XeMLbvhG7/fbrIQKtVKiMtn7CUljQQwvXSaPhkZ/fXONwm01/SLxLnT0d
 Ec8f5YdMFwvr/ZibsNGiu3E8QK+Q5V1IhUn3pKaQTvrsBmR+jjMGjbdnu
 SnNUf1BUa/5wsNuGZ84hhEd/2/joghFVRvZcT+Lbmpk2L/7x9J4Ws4fF2 Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808548"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:31:53 +0800
IronPort-SDR: 9f9oS9g4zg1nKKbGfb2r0Mi8oNCj5j8LjMTiZcydXFnjtAceq4t7zJcQicrUso75mxpGybm938
 BzY2undo9qalWvoqdK2LkW55EAxbcyE6Dtlw0HLNRgzxAZIrUlZpFlaUwIMYc9ziGptVdbeo6e
 amjhGQivGo6AEz8vgkFuHA5P68l4fkyasf9l44cEm3YsNNtPL3oarH4sYuuS89NAhqomunoyIC
 Cs1i8Wqzn4DI36HMivM4gTFMUi+RMoIdFnrJh5iGqTaxLRNOiPfzajJ9+Bbs8IlhxRMdIpgZQl
 Uhc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:42:21 -0700
IronPort-SDR: CL8d1K9jilmb40JWUSs0I5krk1LdO5Axg6b5WgqvP0kNeVuP8OyZKvkmp895a1Be/QssJPBvIs
 arPBcu4tr6mM5rFMhoSU+NTnPkRXG76cm3ToMBbLeul0eMhStow+UH0PStkAM4RxqQdpeUXgFq
 9tlLqYfwhc2vc/hdE4XVSLeo2/KgIYyCyHgjqWTeey6b9KPfV3jNDB3m49wUxG3KW+hutsrefx
 iprljahHJLkv7h4y7dAa3Kwc2Ag01ngC1gcBtFRVp2lNk0wpWH9Z0DW0nRFuGBQ6e1OyZWLTNC
 IPk=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:31:53 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2rS6HHsz1RtW4
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:31:52 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132711; x=1682724712; bh=+kVHS+U6z9asf4h5hbfmudX0RZseimMtPqZ
 rPjZ6sRo=; b=MSq/WJxnLgUdzNLdphZIxQyHpRfCEW6j0Wdm4bITDd3uXIJqQ4U
 6qdg8Jn+9J/5Vy15M0ezWVKJWT8F8K92ngiUMKiBHMjvNoXlsCiavKM2pCNvEVov
 vlK/ucLB7MVAxYZ5cHk1jabnY+TbwEwlTT9KgXLD0a9q8dyAASHunSVnEyJEYJ7P
 7iw/QMpUPkVls7zoUoEY/Arks/dS+UANaSD74pMDu1fcBTeFf/On+bqerWeu/wXb
 w18aQHkuSirM7cbXNck9eth9dOrIym0BiZLWxzFL+lQf5z8+AxH9izE6FsdvqzY0
 s4/hXeC/IEhI1jqvjLH2uTpMFvpk3PLBGwA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id sHTSN_qLR73y for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:31:51 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2rP0PPLz1RtVm;
 Wed, 29 Mar 2023 16:31:48 -0700 (PDT)
Message-ID: <c90afdff-55c6-a4f2-0ad9-a7bb30e6c214@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:31:47 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <55ec6659d861fd13e8e4f46d3e5a7fbad07e3721.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <55ec6659d861fd13e8e4f46d3e5a7fbad07e3721.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The md-raid
 superblock writing code uses bio_add_page() to add a page to a > newly created
 bio. bio_add_page() can fail, but the return value is never > c [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfGp-0001Qx-Rb
Subject: Re: [Jfs-discussion] [PATCH 05/19] md: use __bio_add_page to add
 single page
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: linux-raid@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/30/23 02:05, Johannes Thumshirn wrote:
> The md-raid superblock writing code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Signed-of_-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
