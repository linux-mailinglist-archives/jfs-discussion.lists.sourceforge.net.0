Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0FC6CF764
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:34:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfJV-0004cK-JD;
	Wed, 29 Mar 2023 23:34:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfJT-0004cD-8B for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYikRWiObQ/nCMrSuiZpHFYbFGp2QW9DKg2Cx0mjylw=; b=A2G1snLq6RM9PRqTah25QbC9z1
 TS5BiWsvuJd/kWOWv9dMlMcnPjdZQnrXi6ZRyKX1skL+jjBylnlg0zziApuBkQ/j4gpfYEgkWEJM6
 eTG71agKOcSIynU6DWLojP999TBZ+pNKymMjXbJ0MWOB4lw/fiI0ss/3T2spUuITDZOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYikRWiObQ/nCMrSuiZpHFYbFGp2QW9DKg2Cx0mjylw=; b=i2fgDbRF1h76FHCG4D6Lr+ArT9
 qSej9srChPo1BBqcgZ9B0H4j3hH8Qba0Z/pIAqd/ddqBqkXuEF9kbD+YvkHHUOOrsXC8GtdcYEbLe
 dBmABc8A9raFr1kk7feFcJxc3W8mjAB/3cfcLW5clkQt3Q3RiBISP5AR/K/kgY6Esos4=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfJO-008uLT-EB for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:34:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132878; x=1711668878;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Ma+GEPR39SMifngZ8BJHd5lgwaD86YsRlpp+x2qXieU=;
 b=VzU1FFEROfm0woqMg00drYoCminbl+fe1IyfS8CmwRCD1p9Bsps4UfyQ
 S9dDSPo9SeNcRhXDtbWfIde3rY87vUI1E9T042vb/u/FTV7XlfyMgojuK
 4pJIAT+tYD7+hO/0eVa9TcstVf7LqDV/C5OzXG65ak4/TNcuE261VpILE
 ehhzvQWNDgk21/1sVJIR3IlEqhHOD8wFu68YDKGwkG1SHRu9qUu5ZhnBs
 kYyUfK4h2DVHz5KAqJaE4tuCFkycKY+3cbsbdbHEGnSl+tiadzHoX7y2z
 TsNL0QEhwKLprS56H7NSXMtubI+BxI+FE7P1owxxxtS3PxWuIJ6qW4Dx7 w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="331273957"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:34:31 +0800
IronPort-SDR: Cu8iWJsEnbxPJ8sLZAtbbLa327rm9YUyCLtsqtKn3Fkp9Ub572pt8NtOGwTAAiKjjdeBeXnmON
 zRcHOQhxY98hDpN8C/jXvqKHv+cxECgOXgBEy/lXUWHtbBawadUXKaTrE0KgrvUHJvkxJJIw60
 Mg76Y0Zh42vM83L+mBiXW3dsY/bcXzMKMVnd5suCsiDET4I4/4mGHmRbbNzWihzU6doOtQg9yO
 M7lGg+hYZ5V6Cp33QmJeu1eb3bM9mYPj75G7fF8FGk9tTU0dss90xOEtxzn7KDsdGu1HDTBSAo
 ISQ=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:44:59 -0700
IronPort-SDR: 60pWS/1d3WQET3o70qgnWnnXaRlDiLC0wjyhb/hqgFSbucKNAHTrRNZs7rehOX9920oeqQJs4B
 yBAIxLnOs3t1r75G1WvZvM7/32Tfu97pVMmvVsGXGzGFQ7aYWzjW7lLS2B4UyBqRlib5LrF6a7
 qo2UKj8WT5ipb0V6JzJsVp+Y9M3HKODuTasBO+DmbdYM3Oj37NQSOTk2OXEFA3XEZjJ2EKqV1y
 k/0LmKdzP1gUxa8RopDpk9OEhKqI1/mg5WxFRbFDkCCW5yI8VakSNto5ihF7R9zTlFroDzJOKr
 xqc=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:34:32 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2vW5Px3z1RtVq
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:31 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132870; x=1682724871; bh=Ma+GEPR39SMifngZ8BJHd5lgwaD86YsRlpp
 +x2qXieU=; b=fltjWhcTro3tBLErFz/FZKkzG2DRnrFpnpGJoq06RhvP/J7AK4O
 7Y13aBEddFYPLh9qRwO0kXfog8r+uI+ZEpj3mepNN45RU6pAx2fur9TCfUY6gJI1
 6dh+CAboV3J8Z+TMCQcResD4WNAFsgSD75rA+uDcCBgSl2pXfdspEqVu2G3lBX+d
 yOF3uiVoBgS9RXQiGvI0lrLCKxFf7VBP4RZM/qK3Hpc10swa4bYr8meiIO5g+tR2
 jNxUg/dF7XPNmm0sq2Anptg6+bujSCGgAr6I2EsRid+qpoqMwnWUw/TZET6FvW7R
 EFsv1nA6Q5z1Oldh2VB7ChRoWKk1ezNKX7Q==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id Sah0nH-ttrp7 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:30 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2vS0ZGvz1RtVm;
 Wed, 29 Mar 2023 16:34:27 -0700 (PDT)
Message-ID: <d07c2d82-0edb-6bf1-b97e-07cd66a33bbb@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:34:27 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <902f83de56c67b333959d8b8b4cf37a25414e927.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <902f83de56c67b333959d8b8b4cf37a25414e927.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The JFS IO code
 uses bio_add_page() to add a page to a newly created bio. > bio_add_page()
 can fail, but the return value is never checked. > > Use __bio_ [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfJO-008uLT-EB
Subject: Re: [Jfs-discussion] [PATCH 10/19] jfs: logmgr: use __bio_add_page
 to add single page to bio
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
> The JFS IO code uses bio_add_page() to add a page to a newly created bio.
> bio_add_page() can fail, but the return value is never checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
