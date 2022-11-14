Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F81E628AF3
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 22:00:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ougZE-0006xB-A5;
	Mon, 14 Nov 2022 21:00:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hannes@cmpxchg.org>) id 1ougT6-00040O-V8
 for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Nov 2022 20:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y583Jh2Pc3CXe1k+DPLcrqvBLWxncrlRyFgPw8bgSBQ=; b=Wscva7Yzg3snkVRHq2fM49IeF4
 b6fELTg2VVOCmx18MWc/BgEf+nEkeMpY9Bkhx7gV3LPS+PkHtLmAj8mIhVgCeP0kFG5UMSSgat0aZ
 5QXRqfm8ugQY4yTrdzJzHlFOimyE2zs8fisKaFF6j2QohxCN00SSLj/uuSagzoMpk1NA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y583Jh2Pc3CXe1k+DPLcrqvBLWxncrlRyFgPw8bgSBQ=; b=XNTFje06LPutn6qktAdg5q0L5C
 dETN8xB8oyg2rSufuDFyzkOAYcquTt7V2mzN/ZpVHSrDTNLQ8FUwviD8Uy2csX5wr445ffVGMkq91
 YLTC1ta61CoNe+RSr8vkGC9BEQFIgAttDLkamXZ5HK1f/XH7ko195F/c/TOs5NkHv1e4=;
Received: from mail-qv1-f41.google.com ([209.85.219.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ougT6-008CfP-Ez for jfs-discussion@lists.sourceforge.net;
 Mon, 14 Nov 2022 20:54:12 +0000
Received: by mail-qv1-f41.google.com with SMTP id x15so8571839qvp.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 14 Nov 2022 12:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Y583Jh2Pc3CXe1k+DPLcrqvBLWxncrlRyFgPw8bgSBQ=;
 b=bz4ItPXvhjsWykGyRvwdj81nyH+nRieadwAPDgqDwRST2aE2fjGZvfcwGzswde9olY
 LVHkztboFpJ/W929ynm85qo8AZ02UE4NyzkG4YQLVjUQ1oM3FUyeRvd0oqmfN6Sh6GT4
 BF2E94VU9y81R1/3dcrTxg4FWTc2bH9+xOvTBzoTDUOJspgiRby5F3pk14RpHIINx2qA
 pzv96Mj5OOD2vCPTgRcJJgwKS2YmgztvT3rxRL2z4qbZkK81gB99zwkNetsX5XhjBDcd
 weiVF9llisqXj3dDpFf/IYDFqW5BIZPO9Lcebt1Y01GSwvnc0KMoY6geanqhh8UC3K0x
 sI6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Y583Jh2Pc3CXe1k+DPLcrqvBLWxncrlRyFgPw8bgSBQ=;
 b=d1QNHaSDtJPJb5OAedfmMSeSi1gA2CMszw/iXQ54wyqAWxwWqonxbTfMRqQKya9Utk
 gm/jonLDYE0+Dp/qbyLw9Lz9V4pURB9zPFXUPlGlaoFPb3fUOxA96v01Lqt9yXDi12Ix
 B8xCy8/Q8gABdKVVNu2rF9tEDjm/ILeeoGuCyRvdFZCBl0T6dnf7iL1OrllpPD8isCq7
 6ah52+ZfY9DbsIYS5wS/RKgO5W1a0Uavn5pQdFYNeYU1rAzisVvPVd2j9OojVQtGnNVa
 S5NAEG5zrQdKU8MDr0Lp/it6rZvGW7YM2Stb6x0ahgkQZayHQI1BKGsIkCmnGgV/QJ6h
 bMKA==
X-Gm-Message-State: ANoB5plmkL8azL8kmSTPZEo0nk/iDTRpC5N8WH9ARQiS5+PsYJimU1Oh
 Z49uT3nq4kuhvwRrdEf5k1GOUUWIBF2N0g==
X-Google-Smtp-Source: AA0mqf42zA/jpnYWt5ejPyV8QLyWFu3K1aTeh/ukouAznsKcJ/sSPhIc8d+TW5XfFJCqEwQ5P+/b7Q==
X-Received: by 2002:ad4:5810:0:b0:4bb:5714:1d2e with SMTP id
 dd16-20020ad45810000000b004bb57141d2emr13713717qvb.42.1668457727414; 
 Mon, 14 Nov 2022 12:28:47 -0800 (PST)
Received: from localhost ([2620:10d:c091:480::1:e032])
 by smtp.gmail.com with ESMTPSA id
 ay40-20020a05620a17a800b006cbe3be300esm7027659qkb.12.2022.11.14.12.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Nov 2022 12:28:47 -0800 (PST)
Date: Mon, 14 Nov 2022 15:29:07 -0500
From: Johannes Weiner <hannes@cmpxchg.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <Y3KlE4+SFh0jith3@cmpxchg.org>
References: <20221113162902.883850-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 13, 2022 at 05:28:53PM +0100, Christoph Hellwig
 wrote: > Hi all, > > The VM doesn't need or want ->writepage for writeback
 and is fine with > just having ->writepages as long as ->migrate_ [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.41 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.41 listed in wl.mailspike.net]
X-Headers-End: 1ougT6-008CfP-Ez
X-Mailman-Approved-At: Mon, 14 Nov 2022 21:00:30 +0000
Subject: Re: [Jfs-discussion] start removing writepage instances
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Bob Copeland <me@bobcopeland.com>,
 linux-karma-devel@lists.sourceforge.net, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun, Nov 13, 2022 at 05:28:53PM +0100, Christoph Hellwig wrote:
> Hi all,
> 
> The VM doesn't need or want ->writepage for writeback and is fine with
> just having ->writepages as long as ->migrate_folio is implemented.
> 
> This series removes all ->writepage instances that use
> block_write_full_page directly and also have a plain mpage_writepages
> based ->writepages.

The series looks good from the MM side.

Acked-by: Johannes Weiner <hannes@cmpxchg.org>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
