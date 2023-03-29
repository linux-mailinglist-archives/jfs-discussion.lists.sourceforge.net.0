Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 620786CF729
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:31:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfGK-00055I-2Y;
	Wed, 29 Mar 2023 23:31:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfGF-000557-Es for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SuIhUSYu9mlDLVk/42hpUGYhE6FgIDE6xMsSHGOH+GY=; b=VJ6rXdepETOjAwtt1Tzg1PH8C1
 v0YVx6vYF6v8jdDY5gxLHnh+UCxOwSRsPHRs1dikMb+sC7NZT93cQyygW/0MwDpaFjFezrEtQjRt1
 njgeniLRhzcCWOEOyBWyyoK/Oqlgz1q/qm8zSbFVKAu3+kGVBv0y5Ke1vCMEkjDGqmEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SuIhUSYu9mlDLVk/42hpUGYhE6FgIDE6xMsSHGOH+GY=; b=g1L6VFIxIGEgnSi33Ia5AxsyUc
 QsXw1cu8Bf/AL37qbk44idOktHou4v40nrSo1msUZrA5ECDwmaSSErnLMOC0ZA2f7jMRhYySz1e0J
 V/JHTdDu5oCX3AaO5//xvo6D3zL/HvPgxzYeGAEzszFJW1ZqDdAaBxnrITIF4MV5CMns=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfGD-0001Q4-Rr for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132681; x=1711668681;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UNlm9Cgnb69c4/O/u7KM3nCJu6vgziKIZ4YaTqHtuUE=;
 b=OYXO3KO4knvhuOXksXEoRYt8DqxJwKU1aCcA4atAQtUjEhIKbKxgsRz5
 GX5I6whjImc+MwhxCDw9UScnJq5R10rdrf5WqyAx4+1NnRnwUNAjHkvY4
 80puQQZtioZB+QZNuLLRMZjzF+0rV+dSCVPPCHuzlFQodPDeBe64xTizr
 50NuDvpZRjifhxRPym8Bxc8Xr0epBX5lbEznM5wDm4/wKy/1sMBeA7Nod
 CLhdtMsI1eMVvYFH4yg2xfKvsDMJhLDJZoVNDxjh8XR0xkT0+dw62Gch/
 xynJNMruld58qyqL0pffMAbPrpiUGFoRVT4w1WlOiY4tKWpg/xHzbklBV Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="338903865"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:31:16 +0800
IronPort-SDR: ZKvCyvIiMKoHf/GTTP1w4tUenMwNteLhPlETe+T57lm7QX9aNByBA7TaoQCHnHU8A9Ka+x6XSV
 loT2ewuIofbL3jXgBsBsGIHGk83FOj7XNUExkfIrNO95B7dc9hDaLcD+Q1DbxS93xSlpqL0Ndv
 M4tmmkU79LNoK+Eb/mXs1tVl4ozGyHiw1y1wHkZAE4TLgsxkVX5zwi1+3taAkh4T9yoxU3HomQ
 wImr3cXhON1I8wp1BehuwZ9EoL17YvFX5IfF7j/kqmkDhi3BP5NgmfCNvhSq1SV5HTusARGtkb
 rIs=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:47:24 -0700
IronPort-SDR: BjFN7NFauzcqW8JaDQOWG/b1JvXMA8eIJPz37OhxhuMDey+hG+r/z+90+z24xg7g7WyAIKKZ4+
 g1VO0C6pMJoY4Ll83sXGKwVdVaemPEEn/1Y8XLgd2ej6m27u51x6PY7R5X88gyL+h3/6CTow+a
 LX8cyd0OS2Al3tNnNsAWfDfDUJXjlQ9GIed9VWz90Dx8tP8TRo9L2nLFJNPi9AqAgtyNpPJkYG
 s4I6oz+GZCKIXXmSNjEeS953+cBTvZuiYFSQn82Q/HqX0q/MgQK9qpL+uPJ0lyaioRatKa5lUG
 Nk4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:31:16 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2ql6jgLz1RtVp
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:31:15 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132675; x=1682724676; bh=UNlm9Cgnb69c4/O/u7KM3nCJu6vgziKIZ4Y
 aTqHtuUE=; b=Ca2fO6rcxglppHNXYxRAHziKkRlfWQdPRtKcotDpyHFiP/dqL1l
 +eRINX7r2eICbC4KQtNpc23E7B6cTVrRj9Ksclu4Jqd/OhE7FGf0WFts4RSkNvRZ
 vyDh64QjNua4rA3LG9nobAs9hY5rxbY67Vr2/TNnOHh89mZ8LeAkwGHM4RGHVU7Q
 G2zLU+l3brOhyc7kjdil5v6zpK4QdjwQTJ4zW86BPD9Cb/sL1GpTuVvrOGcehbqI
 6BtW6hfXgSgZ2432WxO3xb5C7AONp6W2nDb+sKaqwGk9QuSWfywQR32EdxP4QOPx
 RFADdkCfux4rv8H/ZisxP0MjM4uYkF1VzgA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id ZfVcmK8xRQio for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:31:15 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2qh3MbGz1RtVm;
 Wed, 29 Mar 2023 16:31:12 -0700 (PDT)
Message-ID: <3ba0a4e1-7b75-9d0c-d6d3-dfc3d4bbbef0@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:31:11 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <56321f8ef1e70e9e541074593575b74d3e25ade2.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <56321f8ef1e70e9e541074593575b74d3e25ade2.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The buffer_head
 submission code uses bio_add_page() to add a page to a > newly created bio.
 bio_add_page() can fail, but the return value is never > check [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfGD-0001Q4-Rr
Subject: Re: [Jfs-discussion] [PATCH 04/19] fs: buffer: use __bio_add_page
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
> The buffer_head submission code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
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
