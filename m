Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B90CC6CF785
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:37:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfLq-00059P-Me;
	Wed, 29 Mar 2023 23:37:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfLp-00059J-4Z for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ye5uVDhHYiNIqI0JdBUFxCn8OM1mdc0S9cE9tlpDOgk=; b=Ly0UjKrsdC35EfqOsNRUomobTf
 x84VBHWGLQIo22P9pGdvrRMo+Y2A4qSmjEHX2lzgI0IGR10g57prab54r0v45GwYfIl0uuJh2H0k7
 gAf9UOcjV/9hqLea/tZbsaM5lPdJscLUQzZ8JpGgnCz4LQ8WAwDMDW2f8XR0yijmkm/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ye5uVDhHYiNIqI0JdBUFxCn8OM1mdc0S9cE9tlpDOgk=; b=mBRn+FHZwlEAnBVr6yAcAZqpXH
 3MAiiAQUXRPhYwywHMkPy5N5KGj5LSG65iUh8Oh3VPj7hnuZdsdcU0swJSzg+VmbxiLWlvrnn5ux3
 VB5Nh812fU9x8QQxiJofEIoqXsfbL6hzKDkizBixb0QDci+wVVVtnIC0nQP26RSBh20Y=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfLn-008uSN-H4 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680133027; x=1711669027;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=D+aEMixN3+lt/Ao/5W/66ZnjrxKALm8DtG5/s/spqgo=;
 b=p6IQkktdMeqLTT362KuLAG5jf5ErCwMAX4M9U/WsxYM/Zrh16N2csPom
 pcc51dYd94k8JXAVLzVG1aFO/EIqzugXLW6yIaWUTNqMsxD8QdP3mWLy5
 Qw6boKZNgXm12hq1mjvhi1nFjpFmwcIqO/1cZqS/qr3tqlkFYtg6cHfGe
 Tu4/7EC8VKKlpw2LHF+yQrHRwSTe+rtwvwbFZjNLFgqauSJHNFgL2Ln22
 6Rfxn82wbhVAieeMAzgHZezwuj9WHC/hUD6mmAVkch+fcJxaDfG43P2nH
 eNMQIE1moDqshUP79VZ/X9enBAM3yH4tzNb2mzObEzzmqhR07roK1R/rJ Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226648403"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:37:02 +0800
IronPort-SDR: tZ7ruzaT9nVl5nGp0uh/j83peD0SMt+sfVBrxUyMJcbLdIvsZLmHCTfaZ0/6cIDL7F+lGrWdpW
 +YeYZF2T2JApCp02F7JeAM8NsHqhSDFxsJjqYkRl5U/jKdXFPWs0fEvcApgXmHdXbxZMxw/+vQ
 Bx1iTQfFheqJo2GSb4ylHLGcUmjmOvBYY5merr6vfnspOQ6gQ0trw8XnL7VwScD+rdoOb5fL25
 vtFFyV84ENC7CpD63dZe7AjjLamWFSJWxp44rOHnGxJ3WdWf253S/fy5DVxDuBFcmwfHpvWjyG
 8fY=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:53:10 -0700
IronPort-SDR: rSrlDVU2vgIVAcb+yTuhTQ1aIu5MCP/liScrg2ZXBLr19osKX8MRouJc3tY5O/xRcKJJsN1/aw
 U6uRVCVwW8HQVCrD4GdhSTaTU1Gsot9rsKFyG20FuztYsfGTUCl2jYd2r8FxlH01kgl6IGJTcN
 NxPaHX5Yj7Xw0kgx2/xTS4KMH2hFPHCTk6lKIYw43X7EkGEiohW4QQiu9D79IZzH6O8XpwA36S
 nytQZNiTux+EbXTSO11CnKGDmt74LihanLqQFlCYJxjcD78qUViIw23N4RjfzpDAPIuemj9GrQ
 vGA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:37:02 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2yP3t9Nz1RtW4
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:37:01 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680133020; x=1682725021; bh=D+aEMixN3+lt/Ao/5W/66ZnjrxKALm8DtG5
 /s/spqgo=; b=BEfOkYGGZfGNwIpK9BEJ0FcFAcVLpJnvJCRHtqvX1ZSykJX+oaz
 TiKbQqo/rlFcgsGqwufvYk8MIKGTrAb9+RSsrJd3SZRo35htZKTw14P+p/eD7q/J
 ceqYnoioxpQ1yuPl8XxWYNWTguv/974yBA9klFhcKgFSo99Ul+ebGjc2RjgypZF9
 Edw+QnL+wy8s1G7+GYq/bnFol1i1bpAhLPRysri8L0LJfnjE4aU2+znrrOFBtHLe
 kPJoBqaYr+hUOYgCZHb6OjFE3dVfncY3OnznL/HrXrJLgp+49NV58WitEWdLbK+H
 SGYLaXAVc//3j4H7s6ktsYfZi2PJTJuLWOw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 4PIt4E41TGT0 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:37:00 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2yK4J91z1RtVm;
 Wed, 29 Mar 2023 16:36:57 -0700 (PDT)
Message-ID: <1027d62b-d09f-e9fb-b8fb-9876fda97f82@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:36:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <aeff063d2f56092df8cae0a6e9c1a8e771994407.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <aeff063d2f56092df8cae0a6e9c1a8e771994407.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06, Johannes Thumshirn wrote: > The floppy code
 uses bio_add_page() to add a page to a newly created bio. > bio_add_page()
 can fail, but the return value is never checked. > > Use __bio_ [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfLn-008uSN-H4
Subject: Re: [Jfs-discussion] [PATCH 14/19] floppy: use __bio_add_page for
 adding single page to bio
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

On 3/30/23 02:06, Johannes Thumshirn wrote:
> The floppy code uses bio_add_page() to add a page to a newly created bio.
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
