Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B062E62E71B
	for <lists+jfs-discussion@lfdr.de>; Thu, 17 Nov 2022 22:39:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ovmbV-0005Y0-36;
	Thu, 17 Nov 2022 21:39:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ovmbT-0005Xu-K7
 for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Nov 2022 21:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ex4lfZCWH1GXxD6WLt3iBMYzgF9gng1cfWt8RxS65g4=; b=fdFIfrKSaPHyWV0HLrWW8djE/u
 iEgfYNHr+eN6CGvFY7/6ZUNBGDeEcl3nAGv2BMLthyIbPG0F7L0l/I9Oowru+n+TFn71r2vxe5aBh
 YDnL0KmPExgDKlw+9TQmZe4UWvR4QLMb4+G2m9jX3BwgmxuD+LmXIF3DtjmLDgmcjGig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ex4lfZCWH1GXxD6WLt3iBMYzgF9gng1cfWt8RxS65g4=; b=QF7+Oy4MQA7lqXFuC9AlsLtpY4
 pmWtWDCJkw6TW+J8J4zZhSnlrMUv8yZZbkQBlKFP8hMcMmw4LWmBGICZF8CfGJIstoOHfqT0ggqqP
 Lv2EEeGwO4G+xvbz5awHzglJVlHYAJ2Su3zkZvEx+vKnMYlkTyL9CUIxVWzXvCprNtKs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovmbO-00BfuG-Fu for jfs-discussion@lists.sourceforge.net;
 Thu, 17 Nov 2022 21:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668721152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ex4lfZCWH1GXxD6WLt3iBMYzgF9gng1cfWt8RxS65g4=;
 b=AKOCSLyyGOIkQJrz3te6lwWdo0QrpdKyaiMBYjLk0FTKQPnmOWML/wpf0CV5AVr4vM2dvu
 Ed7WRSiKsSd+sP2YzRwAMJKVnhIfNqAqOnYDRcwBJ1dCK35h32AHAYp07oC1GMRu1ZcOin
 mfcALHMHRMCqWRrBhwgR41P9WFXbOHc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-gjB233QoOrS4Iv5KazOU1Q-1; Thu, 17 Nov 2022 16:39:07 -0500
X-MC-Unique: gjB233QoOrS4Iv5KazOU1Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F311C29ABA33;
 Thu, 17 Nov 2022 21:39:06 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E33CB2166B29;
 Thu, 17 Nov 2022 21:39:03 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
To: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-ID: <4031619.1668721141.1@warthog.procyon.org.uk>
Date: Thu, 17 Nov 2022 21:39:01 +0000
Message-ID: <4031620.1668721141@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Christoph Hellwig <hch@lst.de> wrote: > The VM doesn't need
 or want ->writepage for writeback and is fine with > just having ->writepages
 as long as ->migrate_folio is implemented. Yay! :-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ovmbO-00BfuG-Fu
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
 linux-karma-devel@lists.sourceforge.net, dhowells@redhat.com,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Christoph Hellwig <hch@lst.de> wrote:

> The VM doesn't need or want ->writepage for writeback and is fine with
> just having ->writepages as long as ->migrate_folio is implemented.

Yay! :-)

David



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
