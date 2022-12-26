Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21192656316
	for <lists+jfs-discussion@lfdr.de>; Mon, 26 Dec 2022 15:22:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p9oMm-0006S9-5Q;
	Mon, 26 Dec 2022 14:22:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1p9oMl-0006S0-55;
 Mon, 26 Dec 2022 14:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gM0A1RKPObxIv7uC6clriFUFFYjgYQDepx03XR8wsv0=; b=Gn6UAdKBtXp2Heo56hW4DqdKPY
 An7DrfalNQ9+ZHBjmgXg3uWVa1cRuP0/pYZ8dVayvCqBExFs6BmnqQwVQqHMcdW9f03mj2WhtbDLH
 UBBMkkTkioYKW/44VWjoWbyISnRctc3hwBIpNfs0x5waHCiMekiLIqkSx3Lz1zFS0sls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gM0A1RKPObxIv7uC6clriFUFFYjgYQDepx03XR8wsv0=; b=P0WI+t+TKj24A6TpHc2RF8eVEf
 xQi5BIvDrr7nN0pN7HhvbgxpbirCOAxuu9bDqambN0RHdFrKrkuhwlKjEFJvtAEh4ADCpu0TRvHX0
 q7YhSbWknC/+Ej3ynNHq3ZbpImkHZBnL98oQ4uwRlXy+2+VRCPwgkcazVFm/IpVBAq04=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p9oMk-00DHhH-8u; Mon, 26 Dec 2022 14:22:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0A5D60EA9;
 Mon, 26 Dec 2022 14:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77E67C4339B;
 Mon, 26 Dec 2022 14:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672064524;
 bh=BEzrRcBKQ+GZ/U+aeCEg9n4Pdy0ikdO5wXFWpAtXmSg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=N7GrMIigC6HxWNrAVct3befoFSSCxU8We3pVOw0O7RzGrspOaLS7OpPHudv168XAA
 25iLUs0PGQXhlSEnFpoMuteXkAvUDuXi2F3q5Ilj3JLvHTC0foaYVDx8XDUHW+FfEn
 lqCyqB5hNS+kNb4YFZ9eV4RnkF0iFaa4JEVF30ZkqOMn2UQsHeJ+XlEW0A0kdXjKtc
 Xnn089Q0lcPPNDHVVs8gb8ZCLt1Gr/wpy2bnawgEal9zvN7aQIAwzliJYz0B7WrevK
 JgvI5+UbqzqVfOzTHbOeRJ2Ud40GRBYxGQlvQ1bcYt2Piyv+6jvwF/w1hr47ANYy2v
 ugCvYxfnZppOg==
Received: by pali.im (Postfix)
 id 46DDAA32; Mon, 26 Dec 2022 15:22:02 +0100 (CET)
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
Date: Mon, 26 Dec 2022 15:21:34 +0100
Message-Id: <20221226142150.13324-3-pali@kernel.org>
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
 
 Content preview:  Other fs drivers are using iocharset= mount option for specifying
    charset. So add it also for hfsplus and mark old nls= mount option as deprecated.
    Signed-off-by: Pali Rohár <pali@kernel.org> --- Documentation/filesystems/hfsplus.rst
    | 3 +++ fs/hfsplus/options.c | 7 ++++++- 2 files changed, 9 insertions(+),
    1 deletion(-) 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
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
X-Headers-End: 1p9oMk-00DHhH-8u
Subject: [Jfs-discussion] [RFC PATCH v2 02/18] hfsplus: Add iocharset= mount
 option as alias for nls=
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

T3RoZXIgZnMgZHJpdmVycyBhcmUgdXNpbmcgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24gZm9yIHNw
ZWNpZnlpbmcgY2hhcnNldC4KU28gYWRkIGl0IGFsc28gZm9yIGhmc3BsdXMgYW5kIG1hcmsgb2xk
IG5scz0gbW91bnQgb3B0aW9uIGFzIGRlcHJlY2F0ZWQuCgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJv
aMOhciA8cGFsaUBrZXJuZWwub3JnPgotLS0KIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvaGZz
cGx1cy5yc3QgfCAzICsrKwogZnMvaGZzcGx1cy9vcHRpb25zLmMgICAgICAgICAgICAgICAgICB8
IDcgKysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL2hmc3BsdXMucnN0IGIv
RG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9oZnNwbHVzLnJzdAppbmRleCBmMDJmNGY1ZmMwMjAu
LjE3MTgwNTMwNGNjMiAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9oZnNw
bHVzLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL2hmc3BsdXMucnN0CkBAIC01
MCw2ICs1MCw5IEBAIFdoZW4gbW91bnRpbmcgYW4gSEZTUGx1cyBmaWxlc3lzdGVtLCB0aGUgZm9s
bG93aW5nIG9wdGlvbnMgYXJlIGFjY2VwdGVkOgogCW9yIGxvY2tlZC4gIFVzZSBhdCB5b3VyIG93
biByaXNrLgogCiAgIG5scz1jY2NjCisJRGVwcmVjYXRlZCBhbGlhcyBmb3IgYGBpb2NoYXJzZXQ9
YGAgbW91bnQgb3B0aW9uLgorCisgIGlvY2hhcnNldD1jY2NjCiAJRW5jb2RpbmcgdG8gdXNlIHdo
ZW4gcHJlc2VudGluZyBmaWxlIG5hbWVzLgogCiAKZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvb3B0
aW9ucy5jIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKaW5kZXggYzk0YTU4NzYyYWQ2Li5kM2RjMGQ0
YmE3N2YgMTAwNjQ0Ci0tLSBhL2ZzL2hmc3BsdXMvb3B0aW9ucy5jCisrKyBiL2ZzL2hmc3BsdXMv
b3B0aW9ucy5jCkBAIC0yMyw2ICsyMyw3IEBAIGVudW0gewogCW9wdF9jcmVhdG9yLCBvcHRfdHlw
ZSwKIAlvcHRfdW1hc2ssIG9wdF91aWQsIG9wdF9naWQsCiAJb3B0X3BhcnQsIG9wdF9zZXNzaW9u
LCBvcHRfbmxzLAorCW9wdF9pb2NoYXJzZXQsCiAJb3B0X25vZGVjb21wb3NlLCBvcHRfZGVjb21w
b3NlLAogCW9wdF9iYXJyaWVyLCBvcHRfbm9iYXJyaWVyLAogCW9wdF9mb3JjZSwgb3B0X2VycgpA
QCAtMzcsNiArMzgsNyBAQCBzdGF0aWMgY29uc3QgbWF0Y2hfdGFibGVfdCB0b2tlbnMgPSB7CiAJ
eyBvcHRfcGFydCwgInBhcnQ9JXUiIH0sCiAJeyBvcHRfc2Vzc2lvbiwgInNlc3Npb249JXUiIH0s
CiAJeyBvcHRfbmxzLCAibmxzPSVzIiB9LAorCXsgb3B0X2lvY2hhcnNldCwgImlvY2hhcnNldD0l
cyIgfSwKIAl7IG9wdF9kZWNvbXBvc2UsICJkZWNvbXBvc2UiIH0sCiAJeyBvcHRfbm9kZWNvbXBv
c2UsICJub2RlY29tcG9zZSIgfSwKIAl7IG9wdF9iYXJyaWVyLCAiYmFycmllciIgfSwKQEAgLTE3
MCw2ICsxNzIsOSBAQCBpbnQgaGZzcGx1c19wYXJzZV9vcHRpb25zKGNoYXIgKmlucHV0LCBzdHJ1
Y3QgaGZzcGx1c19zYl9pbmZvICpzYmkpCiAJCQl9CiAJCQlicmVhazsKIAkJY2FzZSBvcHRfbmxz
OgorCQkJcHJfd2Fybigib3B0aW9uIG5scz0gaXMgZGVwcmVjYXRlZCwgdXNlIGlvY2hhcnNldD1c
biIpOworCQkJZmFsbHRocm91Z2g7CisJCWNhc2Ugb3B0X2lvY2hhcnNldDoKIAkJCWlmIChzYmkt
Pm5scykgewogCQkJCXByX2VycigidW5hYmxlIHRvIGNoYW5nZSBubHMgbWFwcGluZ1xuIik7CiAJ
CQkJcmV0dXJuIDA7CkBAIC0yMzQsNyArMjM5LDcgQEAgaW50IGhmc3BsdXNfc2hvd19vcHRpb25z
KHN0cnVjdCBzZXFfZmlsZSAqc2VxLCBzdHJ1Y3QgZGVudHJ5ICpyb290KQogCWlmIChzYmktPnNl
c3Npb24gPj0gMCkKIAkJc2VxX3ByaW50ZihzZXEsICIsc2Vzc2lvbj0ldSIsIHNiaS0+c2Vzc2lv
bik7CiAJaWYgKHNiaS0+bmxzKQotCQlzZXFfcHJpbnRmKHNlcSwgIixubHM9JXMiLCBzYmktPm5s
cy0+Y2hhcnNldCk7CisJCXNlcV9wcmludGYoc2VxLCAiLGlvY2hhcnNldD0lcyIsIHNiaS0+bmxz
LT5jaGFyc2V0KTsKIAlpZiAodGVzdF9iaXQoSEZTUExVU19TQl9OT0RFQ09NUE9TRSwgJnNiaS0+
ZmxhZ3MpKQogCQlzZXFfcHV0cyhzZXEsICIsbm9kZWNvbXBvc2UiKTsKIAlpZiAodGVzdF9iaXQo
SEZTUExVU19TQl9OT0JBUlJJRVIsICZzYmktPmZsYWdzKSkKLS0gCjIuMjAuMQoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
