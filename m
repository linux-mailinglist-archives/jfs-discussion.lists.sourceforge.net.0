Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D74A719204
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Jun 2023 06:55:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4aKz-0001qJ-Pn;
	Thu, 01 Jun 2023 04:55:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@fromorbit.com>) id 1q4aKy-0001pi-C6
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 04:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HH54ZfR07bvx2it5kMbT2XCoKq4FYr76emvIl28NWxo=; b=SdqThCDehkP84e2FynHL8ftlmI
 SKSYsUydDcDJS7H9K7nB7o+Qn5jQshcZLcVihEftdvDfph7gxNsDOgyd2EWoxY2VhyCpABvJCMqoE
 pnnKxUpvlMbaGHZnODNk6fiMbYoc/kDlYO9/iu8suYHaJ9Cr3EAWHI26r5EtCYRpKVrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HH54ZfR07bvx2it5kMbT2XCoKq4FYr76emvIl28NWxo=; b=iLEBWpV5wv5uVKmjXTUmKBXpIL
 +o9v8hLW3wC+/QKVn7oWpt/BKH4Jp8bCdtdmjqvplQbFPL+TOIb7r4JSjfdoBYxqzvXJMop91Q7BN
 b+pH6iE0Qk7HofmLdVc+HaYdyRL+YHTdwoqI1TrdNja76jzTDtEQWJjpsXcTaTxXhz/k=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4aKs-0081CX-5y for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 04:55:00 +0000
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-38ede2e0e69so153916b6e.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 May 2023 21:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20221208.gappssmtp.com; s=20221208; t=1685595288; x=1688187288;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HH54ZfR07bvx2it5kMbT2XCoKq4FYr76emvIl28NWxo=;
 b=piesyQVeRtRMms515IHzyel5WGupYOm6gQwYErzrU+Xd3lcPfFui53ZKpoZ9ZM0QAY
 RfYnn1AZgOq/cF2VoRscqJP+K7TndcE24FL52O/8VD/L3bkkD1O0oPPknC/ypRbOrNEL
 kCk+e0D7U76msqFGc61DSd6ppfjOk/RprbrbuusB9EdQBTyKuNhd9uLzQ5VKBDFONH8Z
 PBO0t8LIGVzPjbt792ejxk238Lkl+k4i8vaCTn1uhlAFRw9ApOOpk+YxonnVBAQedZwh
 0HwJeyhTsd3S8UFl92GiQ4oeVTolg6wNP9uEWWPK1yBlePrmI0IO2Xg51l9GbFg6JEbY
 lI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685595288; x=1688187288;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HH54ZfR07bvx2it5kMbT2XCoKq4FYr76emvIl28NWxo=;
 b=NtBBRu27GJXEBM36zV9Nd7fCS6YfF7+ujOl4pzZEvGnWbKo7hThaFwi2LNZ3aEQDD4
 wqtpJVpkEGHT846cEj5NwpqnBjui8ENMmYlA5RD1QSE3rMzIT++KGaOC5Bix0vYjhOHj
 hfeT3i+pCtnkoIoLH3XJabNj5zs8+tRKOyQQpZnS95Xji5k20tIZThMa7kEhtjyISMn6
 Z5045WfbGNI1L+wN8KkCkETXthf61Pe3NQL6kI5ySYx8uEtKLN6Y2nnURRVEHeJPYTL3
 odeSsew2iIXmYyXp2OAyk7tRTJpsqvsAXvtxEBX2GawZXbnwKjYfsAcl9Gro2xJc9dYx
 o55Q==
X-Gm-Message-State: AC+VfDzJPXjzKB0l7zf4dnG2wItR7dEVqXGYeeLibyV434MIku58cf+X
 xILovjc0J4PJ0mlp3AJw9/4LJMz22y1sbVoVMcQ=
X-Google-Smtp-Source: ACHHUZ6hlZU/MsjoyVz4yyhoe997V/qcrYIwn3uWW59qEXQKN9Rt7VfRZ5XiA6hG1XPeblBFMsaoCQ==
X-Received: by 2002:a17:902:724c:b0:1af:b9ed:1677 with SMTP id
 c12-20020a170902724c00b001afb9ed1677mr6568666pll.2.1685593595885; 
 Wed, 31 May 2023 21:26:35 -0700 (PDT)
Received: from dread.disaster.area (pa49-179-0-188.pa.nsw.optusnet.com.au.
 [49.179.0.188]) by smtp.gmail.com with ESMTPSA id
 f13-20020a170902684d00b001a980a23802sm2281781pln.111.2023.05.31.21.26.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 21:26:34 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1q4ZtQ-006NBe-17;
 Thu, 01 Jun 2023 14:26:32 +1000
Date: Thu, 1 Jun 2023 14:26:32 +1000
To: Christoph Hellwig <hch@lst.de>
Message-ID: <ZHgd+G7/gg0uOGMF@dread.disaster.area>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
 <58fa893c24c67340a63323f09a179fefdca07f2a.1685532726.git.johannes.thumshirn@wdc.com>
 <ZHfMC86ktyLtIxNb@dread.disaster.area>
 <20230601042021.GA21768@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230601042021.GA21768@lst.de>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 01, 2023 at 06:20:21AM +0200, Christoph Hellwig
 wrote: > On Thu, Jun 01, 2023 at 08:36:59AM +1000, Dave Chinner wrote: >
 > We lose adjacent page merging with this change. > > This is only [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q4aKs-0081CX-5y
Subject: Re: [Jfs-discussion] [PATCH v7 19/20] fs: iomap: use
 bio_add_folio_nofail where possible
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
From: Dave Chinner via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Chinner <david@fromorbit.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, gouha7@uniontech.com,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Jun 01, 2023 at 06:20:21AM +0200, Christoph Hellwig wrote:
> On Thu, Jun 01, 2023 at 08:36:59AM +1000, Dave Chinner wrote:
> > We lose adjacent page merging with this change.
> 
> This is only used for adding the first folio to a brand new bio,
> so there is nothing to merge with yet at this point.

Ah, sorry, missed that. Carry on. :)

-Dave.
-- 
Dave Chinner
david@fromorbit.com


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
