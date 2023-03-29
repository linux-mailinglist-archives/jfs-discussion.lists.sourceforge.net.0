Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE886CF75B
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:34:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfIw-0006ad-Iy;
	Wed, 29 Mar 2023 23:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfIu-0006aX-8V for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DfLaxTup492SuA/C62YZooLlqgIm/3NXjeWzBMeGkHI=; b=AwD7NdbLaNStjHK35LdjEcAfHI
 Y5XlP3dmDWOG04HFJzLu2q1LAlNL12CoXbqj82yPvdkEShPIVg6cPbvB4cC4su4oXBoTS4oM/0PtD
 n+vuEXjG02Hm0/p+XAphUfCsPtpRT3nfmpZROizlEQQk/gEVnb3e5t4G9HqdPH2lqNeE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DfLaxTup492SuA/C62YZooLlqgIm/3NXjeWzBMeGkHI=; b=SmSitYybBkGwqeR572XQU+IVIr
 Nkqzj43tmAf2WtLwTtnh2zNvxOAQXAkQqHEfkquUgKq2hWX7WYSllLZvXLF97u0m59wMzHpSzeCVI
 KPc5W0UK8fv7XmUshrL62a6TOh37Dyvle3OlZ06EHhPq0isQoJWoesH6sXuWqWYzTtfg=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfIt-008uKa-P0 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132847; x=1711668847;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GDXEDSyEMJWiW+7+O1GblQg3NUjwO7C813zV/2S0RGs=;
 b=g4unHMxgVDqEwk/ue5jLzvrQwFyLv4t4QT1cy9ssQU2ajYUe6+9d67Rd
 N9u1nqWazbRgWEQtQES7EFRbWIFmfSUREGlMEFnzljQRVsb5i3ClIdJVN
 eqF+31zsiCMH0GgeMl0MWlckIPVUqlobQnmlwq1g7kn+mXH9P54tdhewm
 GSSv90K3HCEN+6+LKPLq0pI6/suh27RFoXpVvq1el4Hl37IdJS4GzSUgT
 u4Nl+s+uKxga+WRtVt6RttVVsCYIPU0IiEXG2+UKoj5Ziy1Npqz1z4249
 cl/w3trBROWHjYzb84P2wWcne8VzS8lXQ83q/IHXhpDVPHm8uf6OoICFS w==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808696"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:34:02 +0800
IronPort-SDR: 9G7zR6JeADmNkB5oCmbJeLGpYNoycNfIpSvhWxLyd3x5EHFWJgE0KDO59IKBUXgvAx8mDpc4Um
 Jsk7grfjSOAV6hhyHrsi/6z1sWOQQXuhSzyI+mKaLCFZJ3BT9QvzgZCG4gOYVjs9tXtjJLS1vH
 HlKLvZKAsiPJvPmLRlZUWlIcGp8Spv/eyUGpmJq50gvsLxpEAM3ZVjUTTIYnogfdwGbrPb+I72
 9+q/1OdI2OWdlk5Hq9DsNfyTXvUZq5klHSBhxkupd+makatxZKqJuyz0YAXzvC4yq5E2IIjDtU
 5vQ=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:44:30 -0700
IronPort-SDR: WJ52MuNT5CEub9mMdTRL4ZcT+nD2UH/zwsoKVCN5JlDRlO4rfQPrjuGJrgRE4rdh+p2E0sSTfe
 QMwBRgmLAWVvlhiiKxL1UBlQo2MZstbQxMlK+yjLFSQOafQOv+2dC8y5PqtA1eMPCXmgBnllcZ
 euq7xWB3WPFERV0Eqmz7bnqI9uqwz5xAhw7TzU2XHkh7nXRhy9l6gl7Aq1uuagNAjvy/bgJJVi
 AwCdR0TQ1F2uoG4JbsDRtJxR0GjNpbW81OKV6MtqkX/T4gFi5wkXd844uBIXNFODiLwUkmrgr+
 mjY=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:34:02 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2tx50Q3z1RtW5
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:01 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132840; x=1682724841; bh=GDXEDSyEMJWiW+7+O1GblQg3NUjwO7C813z
 V/2S0RGs=; b=Kl9kIAB48YMkB355tdUzMAD6Lq7A95Cb8NfzVQHNcITpVbKpz5Q
 Bf/AlRacy+pwRPXxv/Y59EYwdHDj+sTzoN5d7khiJg1/fGxSDSjw6dIQly/wyEJ2
 ukCLhjTvrSGecTdk0ROBuOBGbsnuKbXyOPdM7YY2E4Dni8ehYMBTgPC7NIVoKJxc
 8IKPtyMNTgTUJYWyKfuXjNsbQw0QIXDyQWwuAWgSMepI8V9fHAzLY/2GXcTCzi1T
 8EIsd+WBdRLyK8+qPFbQ6B5xdnHCAUKseq3eKeeBNbs9gw2iB6jUvVdXetSvwOGq
 ede4DlUtPAZbbK7Xl0zEQL9cV4gZzJeC4yg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id L6BU3aXB12bi for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:00 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2ts6Vtrz1RtVm;
 Wed, 29 Mar 2023 16:33:57 -0700 (PDT)
Message-ID: <3f1c6faf-b558-14ba-a2bc-ac12aad41ba9@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:33:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <5ce38530bc488f9d4f1692d701ca7ad5ea8ca3e9.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <5ce38530bc488f9d4f1692d701ca7ad5ea8ca3e9.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05,
 Johannes Thumshirn wrote: > The btrfs raid58
 sector submission code uses bio_add_page() to add a page > to a newly created
 bio. bio_add_page() can fail, but the return value is > nev [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfIt-008uKa-P0
Subject: Re: [Jfs-discussion] [PATCH 09/19] btrfs: raid56: use
 __bio_add_page to add single page
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
> The btrfs raid58 sector submission code uses bio_add_page() to add a page
> to a newly created bio. bio_add_page() can fail, but the return value is
> never checked.
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
