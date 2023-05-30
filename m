Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33471621D
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 15:36:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q3zWY-0005wA-KJ;
	Tue, 30 May 2023 13:36:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gouhao@uniontech.com>) id 1q3sfe-0000q7-EM
 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=FtREsmWu1HeFDitCnC35tMxNKM
 Gx8Fp0O9/OT9/qskHT0w9OKflJokHOgmB2/mgJhyvkjEcLiIthWW2hJV1JZNFWW81sjQdOgWdq0Rn
 6FwWdvbf6Xv+ms3+r09OOTMi25Emp6QSvilgQQEkEU26XKsiPJa9Iu8u2rI808rEGyVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=GGJUlxprJNNS9LNMn24zc9BKQ3
 Uy6PJXo0L+f6k6K3lTQULjps9Lf3Wm5qGidr6rNwHFcIUJ5ffB5Gp3RB1zUI7BgtB16xodsKK5cWQ
 IrTb/eqzMk+nEmJ+im8smB6jS/V6E5oBiEc72bwMzSx0YCVWLBmW5jjc86JC5ycMITA8=;
Received: from smtpbguseast1.qq.com ([54.204.34.129])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3sfU-0003Fr-S0 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 06:17:24 +0000
X-QQ-mid: bizesmtp80t1685425279twgcuzx8
Received: from localhost.localdomain ( [113.200.76.118])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Tue, 30 May 2023 13:41:14 +0800 (CST)
X-QQ-SSF: 01400000000000C0G000000A0000000
X-QQ-FEAT: PS+4EKbh/3VZTNl+WF0Ulx8rF2kdMZTaIGg+lfwFXeZiDc6oH2S0wgU89BjFP
 rCqq6AvDHYPbw+HNpVuhqTmPHMwubMkdIo8LtPyCm9lFno97ZHDK7gsgMfm/tWhmaZ2KqG/
 YpaPLFcQpE8GFWE0zxBwJniQ5xRRRGfBgZwEpc6XQflGX5jfdtJccWzfV6SXeRqZ16CjQzq
 +aYhMM4S25LNNaWQjvaVCVhNFbLy5WHlBFFbl8eAIuv7paJPofUqWjW9FX/Xrs/JoAF66qs
 tg2DhrSPlive+B6sgkcJt4ukG0nOAbCVaEJ2K/PeKz3pY+ddJtByzHcuwh+ppXTJhzFPxiU
 sDtxJxIM12TvaZv+6UUWr8mUuZHZw==
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 13327520248541452959
From: gouhao@uniontech.com
To: johannes.thumshirn@wdc.com
Date: Tue, 30 May 2023 13:41:12 +0800
Message-Id: <20230530054112.29389-1-gouhao@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230502101934.24901-5-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-5-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz7a-0
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details. Content preview:  
 Content analysis details:   (2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.129 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [54.204.34.129 listed in wl.mailspike.net]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q3sfU-0003Fr-S0
X-Mailman-Approved-At: Tue, 30 May 2023 13:36:29 +0000
Subject: Re: [Jfs-discussion] [PATCH v5 04/20] fs: buffer: use
 __bio_add_page to add single page to bio
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, damien.lemoal@wdc.com,
 kch@nvidia.com, agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 damien.lemoal@opensource.wdc.com, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
