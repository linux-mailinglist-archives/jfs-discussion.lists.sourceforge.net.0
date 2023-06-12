Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C8C72C6B6
	for <lists+jfs-discussion@lfdr.de>; Mon, 12 Jun 2023 15:59:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q8i4Y-0001ir-5x;
	Mon, 12 Jun 2023 13:59:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1q8gce-0003hs-NS
 for jfs-discussion@lists.sourceforge.net;
 Mon, 12 Jun 2023 12:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tTMhvLLlxLduku60kqh9t4hhU2KGCMkQO9qTJKYmDvE=; b=PmFnXt9fpzMFdFBMGPSni94Ye6
 MAs3laXzxFNQZr7fJ7R1MTE0uPV87UTHbQ2Izl2hvWfGYId/9vFzewbVOS3MUf7YpJFpVFqGYJTQ7
 R6IwjFKICfCdM36dxZR3UuL49N37RxA75KZjxwA7JhW2DBdriHi72dvSB+XjK/e8ptGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tTMhvLLlxLduku60kqh9t4hhU2KGCMkQO9qTJKYmDvE=; b=fDiIjqp+zr/4/DFY7XyiVzgbd9
 eszAkU5HUo6e2rO+7cs5h2c/DGQNbWzG33MCj34EAHcxctD+T2XCdh6aQqHcTvwpfJwHUOMby+jIY
 QhBwdF4Qj3Yo/f8FkzieQtriq7AorG+pBx8IfT9OXysZbzTEYk4cVyRQ8ZAJmUvkjJ0k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q8gcZ-000imZ-T6 for jfs-discussion@lists.sourceforge.net;
 Mon, 12 Jun 2023 12:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686572762;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tTMhvLLlxLduku60kqh9t4hhU2KGCMkQO9qTJKYmDvE=;
 b=ARn19Ew7MHAz00cixyaW4hDwMQybY3p327MHWFaEzdfwYTy/l1y8YZcpoNMQ0GPThHO1jP
 efHqIKzYNnuQe8TlXxmNA/apY46rEP3b6lY08OTQ5XNmh8Tp6qpyC4uQvxWtDT0v4lnLam
 ALuoh/NN09jjerCZjT4vAPty2gnblT8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-30-AynBElupPJ6WiOJw2BAedg-1; Mon, 12 Jun 2023 08:25:57 -0400
X-MC-Unique: AynBElupPJ6WiOJw2BAedg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDEEC3C11C67;
 Mon, 12 Jun 2023 12:25:55 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.42.28.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 023222026833;
 Mon, 12 Jun 2023 12:25:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <202306121557.2d17019b-oliver.sang@intel.com>
References: <202306121557.2d17019b-oliver.sang@intel.com>
To: kernel test robot <oliver.sang@intel.com>
MIME-Version: 1.0
Content-ID: <105868.1686572748.1@warthog.procyon.org.uk>
Date: Mon, 12 Jun 2023 13:25:48 +0100
Message-ID: <105869.1686572748@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  kernel test robot <oliver.sang@intel.com> wrote: > kernel
 test robot noticed a 11.6% improvement of stress-ng.sendfile.ops_per_sec on:
 If it's sending to a socket, this is entirely feasible. The splice_to_socket()
 function now sends multiple pages in one go to the network protocol's
 sendmsg() method to process instead of using sendpa [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q8gcZ-000imZ-T6
X-Mailman-Approved-At: Mon, 12 Jun 2023 13:59:03 +0000
Subject: Re: [Jfs-discussion] [linux-next:master] [splice] 2cb1e08985:
 stress-ng.sendfile.ops_per_sec 11.6% improvement
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
Cc: jfs-discussion@lists.sourceforge.net, David Hildenbrand <david@redhat.com>,
 feng.tang@intel.com, dhowells@redhat.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-afs@lists.infradead.org,
 linux-nilfs@vger.kernel.org, lkp@intel.com, Christoph Hellwig <hch@lst.de>,
 cluster-devel@redhat.com, ying.huang@intel.com, linux-ext4@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, ecryptfs@vger.kernel.org,
 linux-um@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, Jens Axboe <axboe@kernel.dk>,
 Christian Brauner <brauner@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 fengwei.yin@intel.com, ocfs2-devel@oss.oracle.com, oe-lkp@lists.linux.dev,
 ntfs3@lists.linux.dev, linux-erofs@lists.ozlabs.org,
 linux-karma-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

kernel test robot <oliver.sang@intel.com> wrote:

> kernel test robot noticed a 11.6% improvement of stress-ng.sendfile.ops_per_sec on:

If it's sending to a socket, this is entirely feasible.  The
splice_to_socket() function now sends multiple pages in one go to the network
protocol's sendmsg() method to process instead of using sendpage to send one
page at a time.

David



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
