Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C00F5A97B77
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 02:01:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7NXQ-00063y-CF;
	Wed, 23 Apr 2025 00:00:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <akpm@linux-foundation.org>) id 1u7NX4-00061y-9B
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 00:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CnAz3nAOoU5TL9PQbVg0c0+nLfp42VouMfkJtiI5XL0=; b=ihz79M1avDjwqsgVeK5z1591v1
 G7wCLlPwtviORKBlp0qy6f8hiKVwf9so6p5y88ghAHemP522G2u43SfQWx47HuVl3QYyn7WZ+o3eN
 RWxiE1jjz/gKdh5rnNNbYvlG7LZzMvxX6C9tGVD7mc3N3W83tP/pD/vLRfrdD9KuZKqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CnAz3nAOoU5TL9PQbVg0c0+nLfp42VouMfkJtiI5XL0=; b=WhcqOzo1SHqhjTEpeDMl2lSoI0
 H5AufXebr1fqkyljfeF36zcMbQx/PlG6scvy3lQnj3IBovj0QBmBfpzVASnE61coYfV87cfUHRRFr
 U6+gngrXLY1ll1IHMLBbz+5mD4MvJlRuSlKenmLQBYEwZpFwKpavNukL6sqsHH0Y8CXY=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7NWn-0006Mu-BV for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 00:00:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 265084A50C;
 Tue, 22 Apr 2025 23:41:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EE33C4CEE9;
 Tue, 22 Apr 2025 23:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1745365272;
 bh=Je+XbTDpM7XoCA2l6SPO6P6zZ4dfGXa2/Zffo3Wvq4w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=phfaszqXOfy+MdNxac3DKdmP1eHQIAZO+lIpb3jy7JpwOyA7AaqfWXkw7Pjous3Uo
 8FhqLlTt+/vVJ/3cQfPoCY1HAJTXxmdHkp1TnYOcE9K7fslPg0U6dFmtOm1uoABexm
 wNjrbaKaDrwJfRhdAWc3qJsQv/flhqcvVq+IJUUk=
Date: Tue, 22 Apr 2025 16:41:11 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Shivank Garg <shivankg@amd.com>
Message-Id: <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
In-Reply-To: <20250422114000.15003-2-shivankg@amd.com>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue,
 22 Apr 2025 11:40:03 +0000 Shivank Garg <shivankg@amd.com>
 wrote: > Rename the previously static folio_expected_refs() to clarify its
 > purpose and scope,
 making it an inline function > folio_migration_expected_refs()
 to calculate expected folio references > during [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in bl.score.senderscore.com]
 -2.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1u7NWn-0006Mu-BV
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 david@redhat.com, apopple@nvidia.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, donettom@linux.ibm.com,
 ziy@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 22 Apr 2025 11:40:03 +0000 Shivank Garg <shivankg@amd.com> wrote:

> Rename the previously static folio_expected_refs() to clarify its
> purpose and scope, making it an inline function
> folio_migration_expected_refs() to calculate expected folio references
> during migration. The function is only suitable for folios unmapped from
> page tables.
> 
> ...
>
> +/**
> + * folio_migrate_expected_refs - Count expected references for an unmapped folio.

"folio_migration_expected_refs"

It's concerning that one particular filesystem needs this - one
suspects that it is doing something wrong, or that the present API
offerings were misdesigned.  It would be helpful if the changelogs were
to explain what is special about JFS.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
