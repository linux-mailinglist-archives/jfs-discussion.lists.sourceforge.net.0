Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EED6D65631C
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMv-0001y7-9Z;
	Mon, 26 Dec 2022 14:22:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMs-0001xX-Ll;
 Mon, 26 Dec 2022 14:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbnArp/Y0UQrurgqJvDl683E2eOgfoyDxSesZf6O2Dc=; b=NhJyaocWfj5zVmR6y1oyu4yuP1
 gavX7pJmTD05a3W1c3OXVgTaNq2NU4xwEXqzKzkEj3FfLafcx4yWt+oJW+fSGnTXXRwp4XzL29bPI
 dUX/eL/mKgq3DdloNnmk4p1j2ozE43GAqP91PJ8cyUwo3XzLLUmfvPS06TMr2PFf0VhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LbnArp/Y0UQrurgqJvDl683E2eOgfoyDxSesZf6O2Dc=; b=XAiDl3GBUn/58nbSVbwg8SDLl2
 0jXZVrN0f79zhXGlysn5SpiXc2qyMy2fDVnq/79xfoEOgnnrOVv2dZ8rA0Tf48KjAiLhuwboyi97u
 U93/zmV7I8//paZXP4yF7bRucCHfaeUy1gmiBa0dACfaRTYZEHrwbplGwZ2HQ3Vl4FKs=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMr-00DHhL-Mx; Mon, 26 Dec 2022 14:22:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 357D9B80D3B;
 Mon, 26 Dec 2022 14:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B26BEC433F0;
 Mon, 26 Dec 2022 14:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064527;
 bh=7z2lZ+Be7RkuOUgzW/6Khhu+Fp4b8cIx0oWTtjIwGLE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=pW2+TFrbcj9Y/de7k5L+kL7JaFTjxs8ZabMRJesm96TzLOlfKyD2ZU68GdwWD8OXT
 /MkTbPYx6x8/RdXTBHi3KPZQxXa8UGIALdcDx5R4UUCAIeGxc5H3qa0eefxO9C/Jd9
 p6VIQ9PDX11m451GS7nAbpjNoq02pEoNbs7obTnCtto51IJC/LsXKGSoIa/p3oigPD
 SLjqwoOadzlBmO6fGa6k6SBurFCHiz+fFOrARIv28c5D32lF8h6Tan2asFNhWWAZmq
 GN/kH9H2zR240mg+LXhnncrZFZ0qrN76B7p4mgr/FFafhpqv3pN5093qKOle7exmNL
 rLQ12nQGwmE7g==
Received: by pali.im (Postfix)
 id 6D4ED9D7; Mon, 26 Dec 2022 15:22:07 +0100 (CET)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: linux-fsdevel@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jan Kara <jack@suse.cz>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Anton Altaparmakov <anton@tuxera.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Steve French <sfrench@samba.org>,
 Paulo Alcantara <pc@cjr.nz>, Ronnie Sahlberg <lsahlber@redhat.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pavel Machek <pavel@ucw.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Kari Argillander <kari.argillander@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>
Date: Mon, 26 Dec 2022 15:21:38 +0100
Message-Id: <20221226142150.13324-7-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20221226142150.13324-1-pali@kernel.org>
References: <20221226142150.13324-1-pali@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Mount option is named iocharset= and not charset= Signed-off-by:
    Pali Rohár <pali@kernel.org> --- fs/befs/linuxvfs.c | 6 +++--- 1 file changed,
    3 insertions(+), 3 deletions(-) diff --git a/fs/befs/linuxvfs.c b/fs/befs/linuxvfs.c
    index f983852ba863..5c66550f7933 100644 --- a/fs/befs/linuxvfs.c +++ b/fs/befs/linuxvfs.c
    @@ -677,13 +677,13 @@ static struct dentry *befs_get_pare [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p9oMr-00DHhL-Mx
Subject: [Jfs-discussion] [RFC PATCH v2 06/18] befs: Rename enum value
 Opt_charset to Opt_iocharset to match mount option
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

TW91bnQgb3B0aW9uIGlzIG5hbWVkIGlvY2hhcnNldD0gYW5kIG5vdCBjaGFyc2V0PQoKU2lnbmVk
LW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBmcy9iZWZzL2xpbnV4
dmZzLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9mcy9iZWZzL2xpbnV4dmZzLmMgYi9mcy9iZWZzL2xpbnV4
dmZzLmMKaW5kZXggZjk4Mzg1MmJhODYzLi41YzY2NTUwZjc5MzMgMTAwNjQ0Ci0tLSBhL2ZzL2Jl
ZnMvbGludXh2ZnMuYworKysgYi9mcy9iZWZzL2xpbnV4dmZzLmMKQEAgLTY3NywxMyArNjc3LDEz
IEBAIHN0YXRpYyBzdHJ1Y3QgZGVudHJ5ICpiZWZzX2dldF9wYXJlbnQoc3RydWN0IGRlbnRyeSAq
Y2hpbGQpCiB9CiAKIGVudW0gewotCU9wdF91aWQsIE9wdF9naWQsIE9wdF9jaGFyc2V0LCBPcHRf
ZGVidWcsIE9wdF9lcnIsCisJT3B0X3VpZCwgT3B0X2dpZCwgT3B0X2lvY2hhcnNldCwgT3B0X2Rl
YnVnLCBPcHRfZXJyLAogfTsKIAogc3RhdGljIGNvbnN0IG1hdGNoX3RhYmxlX3QgYmVmc190b2tl
bnMgPSB7CiAJe09wdF91aWQsICJ1aWQ9JWQifSwKIAl7T3B0X2dpZCwgImdpZD0lZCJ9LAotCXtP
cHRfY2hhcnNldCwgImlvY2hhcnNldD0lcyJ9LAorCXtPcHRfaW9jaGFyc2V0LCAiaW9jaGFyc2V0
PSVzIn0sCiAJe09wdF9kZWJ1ZywgImRlYnVnIn0sCiAJe09wdF9lcnIsIE5VTEx9CiB9OwpAQCAt
NzQ0LDcgKzc0NCw3IEBAIHBhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9ucywgc3RydWN0IGJlZnNf
bW91bnRfb3B0aW9ucyAqb3B0cykKIAkJCW9wdHMtPmdpZCA9IGdpZDsKIAkJCW9wdHMtPnVzZV9n
aWQgPSAxOwogCQkJYnJlYWs7Ci0JCWNhc2UgT3B0X2NoYXJzZXQ6CisJCWNhc2UgT3B0X2lvY2hh
cnNldDoKIAkJCWtmcmVlKG9wdHMtPmlvY2hhcnNldCk7CiAJCQlvcHRzLT5pb2NoYXJzZXQgPSBt
YXRjaF9zdHJkdXAoJmFyZ3NbMF0pOwogCQkJaWYgKCFvcHRzLT5pb2NoYXJzZXQpIHsKLS0gCjIu
MjAuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpK
ZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1k
aXNjdXNzaW9uCg==
