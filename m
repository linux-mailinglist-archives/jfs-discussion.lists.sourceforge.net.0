Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 606B6A4E15E
	for <lists+jfs-discussion@lfdr.de>; Tue,  4 Mar 2025 15:43:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tpTTl-0006cv-R6;
	Tue, 04 Mar 2025 14:42:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <strforexc@gmail.com>) id 1tovFG-0007xo-CQ
 for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Mar 2025 02:09:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bGVtdzstiW/wqh/Ldd58xgGtwp0dOJm8co7AXDuD+CY=; b=RujxWpjCY8w+3r8rewwpjenzsj
 MfouBgIUPK0yu0GaNUuy9PLwccVok342QcWW5ZlWZ6oQ71Ok+GbchVOX3PegReqoFMR8poAVEWQ+M
 xF1oadKh9A3GmefheBr0tW671htgQDLSu0I8/rUldQzM0gggozEuzxklNKJbHqDeG4VM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bGVtdzstiW/wqh/Ldd58xgGtwp0dOJm8co7AXDuD+CY=; b=b
 hgj9B+G94MvrCRVcGAzQCFBnoN0IXvHhjKVVTqSF3SubFwgAickS9m2BR+f0V55ypR+JwLGsd+Mm1
 /b9ryki2uNYRuejq9s9ctqxlwQTEerYCQDGcZ0A0c4eSlgvkkHGlWzs/gK97mOX+cv9NxW2zr0/zs
 XGqV7BANwgIGTRCk=;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tovF2-0000Xy-Rq for jfs-discussion@lists.sourceforge.net;
 Mon, 03 Mar 2025 02:09:23 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 006d021491bc7-5fd0adce179so1923887eaf.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 02 Mar 2025 18:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1740967742; x=1741572542; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bGVtdzstiW/wqh/Ldd58xgGtwp0dOJm8co7AXDuD+CY=;
 b=G9kg1d9+pbmtDtIY6ii1FPMe5q3eIzTLL1YdISliwPRkzfSjOPiiCJvBYXygak8DJl
 h4DdSmXEhvmTk34rJWaA+HicBugprBC13FSFYYmTeHaZffeR6MRCdhmI9XNiWufMk5Km
 yZdqSAHd1oo5bqewMNdFl+fNtg8v2wO4XNI4vytpukp4D+O1xRnU5vAd9t2Kd+tjsHNc
 jNXfaVEgaWOgq4PDAb6Md1E3qr9+7Jl3d5VLTOH2o83oYTqHA4rvhy9l9SxvdPJqUet3
 4+kDxgT7zmxFKryw0c/WCs6SjaplrE7tGZlm6SMxN8XG969aeYhVqLfWWvEAoCGW0yYV
 5sPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740967742; x=1741572542;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bGVtdzstiW/wqh/Ldd58xgGtwp0dOJm8co7AXDuD+CY=;
 b=iDP7w46hFTMugg5tXc25AMp87t0r4yyGs6kRMkUJTDBKWWdejTnvzE1DxsdJbtsPcW
 22+VWvk7lhVsWMmXnIDyfbTps9st2wSQihY5Cf4xpgch+XH5r6aDdvQY499qAjVOqvlS
 Bv9cXO0H88MRccEQsv7u5NB8D/IHSQIJVca9iUFoGQMulsgYRCCP+Z993RA6UCUz4sct
 PUCu0WHYofFA2rh7K9MDziBeQ8uF8NZv7gKnDRDcJcHpWAKA4TXPQs/gctDNBgcJ0J3f
 E+lZTxdeLCOH9ZxXyWZFuxcwTb2McgXR2ihS9ub/sf0HWKj4ixuvY0MzCf8jWqMKH75f
 vP6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1DtIg0Dx2eYOWURXSnOs9mIz/kVfQ7Ta2+T5Q5XlbiuPyJG7nA0V6DEFctlLZzEWc+PDsehLPW2MeP70viQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwJ0IjwroZoCTTAE356jLnKK4sGliO5I0s9iw77qSQaD/DT32ws
 ff+FEN04p0puAMv/DYcIjYusBrAsIvBgqmZsx9f6QkxocTXxxFrAWOhRU90sSGvLkv2Jldjxeqr
 hHRBZp39Se4I8L2h6awALhzeLcs46wQ+IGNzFimbu
X-Gm-Gg: ASbGncux6vy+V4UQ3mbmD/aDB9InTHXTBUTVDEKv5ydLlUFRObnImFkzUX7iwg66jc2
 BTzs0Rwv71jTJiFXwD/97IOWaAgUvP5evX4B2nVudlNfHj/w1Mv7VLlDl9wDY0MtxuEW+DIGaqP
 AwAwoV/hjpw0FZK7qEYwAKDvz/1A==
X-Google-Smtp-Source: AGHT+IECdbEngM1QwmkflxOZqBnCIk+22Ndoku3IRNsN8NE6AjLygIdCsGztaqwVoc5FxdYaBBRftwi2/HRDtbSNBIY=
X-Received: by 2002:a05:6870:390f:b0:29e:5c37:a1c0 with SMTP id
 586e51a60fabf-2c1783f5c45mr6994385fac.21.1740967742003; Sun, 02 Mar 2025
 18:09:02 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 3 Mar 2025 10:08:51 +0800
X-Gm-Features: AQ5f1Jo98mhugTMDnFGdj1_SXDDWwzAo-t8qVEMESU92n4XUXIcKkevpDxkwbfE
Message-ID: <CA+HokZqaL86gQ-7zSW+4YZs2krj4PRnk3Qz2p8a7uBUwkHhdBw@mail.gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net, 
 linux-kernel@vger.kernel.org
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Kernel commit: v6.14-rc4 (Commits on Feb 24, 2025) Kernel
 Config : https://github.com/Strforexc/LinuxKernelbug/blob/main/.config Kernel
 Log: LinuxKernelbug/KASAN slab-out-of-bounds Write in diWrite/lo [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.161.46 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.161.46 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [strforexc[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FREEMAIL_REPLY         From and body contain different freemails
X-Headers-End: 1tovF2-0000Xy-Rq
X-Mailman-Approved-At: Tue, 04 Mar 2025 14:42:38 +0000
Subject: [Jfs-discussion] =?utf-8?q?KASAN=3A_slab-out-of-bounds_Write_in_d?=
	=?utf-8?b?aVdyaXRl77yIIHY2LjE0LXJjNCBrZXJuZWzvvIk=?=
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
From: Strforexc yn via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Strforexc yn <strforexc@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

S2VybmVsIGNvbW1pdDogdjYuMTQtcmM0IChDb21taXRzIG9uIEZlYiAyNCwgMjAyNSkKS2VybmVs
IENvbmZpZyA6IGh0dHBzOi8vZ2l0aHViLmNvbS9TdHJmb3JleGMvTGludXhLZXJuZWxidWcvYmxv
Yi9tYWluLy5jb25maWcKS2VybmVsIExvZzogTGludXhLZXJuZWxidWcvS0FTQU4gc2xhYi1vdXQt
b2YtYm91bmRzIFdyaXRlIGluCmRpV3JpdGUvbG9nMCBhdCBtYWluIMK3IFN0cmZvcmV4Yy9MaW51
eEtlcm5lbGJ1ZwpSZXByb2R1Y2U6IExpbnV4S2VybmVsYnVnL0tBU0FOIHNsYWItb3V0LW9mLWJv
dW5kcyBXcml0ZSBpbgpkaVdyaXRlL3JlcHJvLnByb2cgYXQgbWFpbiDCtyBTdHJmb3JleGMvTGlu
dXhLZXJuZWxidWcKCgpUaGlzIGJ1ZyBzZWVtcyB0byBoYXZlIGJlZW4gcmVwb3J0ZWQgYW5kIGZp
eGVkIGluIHRoZSBvbGQga2VybmVsLAp3aGljaCBzZWVtcyB0byBiZSBhIHJlZ3Jlc3Npb24gaXNz
dWU/IElmIHlvdSBmaXggdGhpcyBpc3N1ZSwgcGxlYXNlCmFkZCB0aGUgZm9sbG93aW5nIHRhZyB0
byB0aGUgY29tbWl0OgpSZXBvcnRlZC1ieTogWmhpemh1byBUYW5nIHN0cmZvcmV4Y3R6emNoYW5n
ZUBmb3htYWlsLmNvbSwgSmlhbnpob3UKWmhhbyB4bnhjMjJ4bnhjMjJAcXEuY29tCgpsb29wNTog
ZGV0ZWN0ZWQgY2FwYWNpdHkgY2hhbmdlIGZyb20gMCB0byAzMjc2OAo9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KQlVHOiBL
QVNBTjogc2xhYi1vdXQtb2YtYm91bmRzIGluIGRpV3JpdGUrMHhlYTIvMHgxOTUwIGZzL2pmcy9q
ZnNfaW1hcC5jOjc1MwpXcml0ZSBvZiBzaXplIDMyIGF0IGFkZHIgZmZmZjg4ODAyYTdkNDBjMCBi
eSB0YXNrIHN5ei41LjE1LzExNTM3CgpDUFU6IDEgVUlEOiAwIFBJRDogMTE1MzcgQ29tbTogc3l6
LjUuMTUgTm90IHRhaW50ZWQgNi4xNC4wLXJjNCAjMQpIYXJkd2FyZSBuYW1lOiBRRU1VIFN0YW5k
YXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwgQklPUyAxLjE1LjAtMSAwNC8wMS8yMDE0CkNh
bGwgVHJhY2U6CiA8VEFTSz4KIF9fZHVtcF9zdGFjayBsaWIvZHVtcF9zdGFjay5jOjk0IFtpbmxp
bmVdCiBkdW1wX3N0YWNrX2x2bCsweDExNi8weDFiMCBsaWIvZHVtcF9zdGFjay5jOjEyMAogcHJp
bnRfYWRkcmVzc19kZXNjcmlwdGlvbi5jb25zdHByb3AuMCsweDJjLzB4NDIwIG1tL2thc2FuL3Jl
cG9ydC5jOjQwOAogcHJpbnRfcmVwb3J0KzB4YWEvMHgyNzAgbW0va2FzYW4vcmVwb3J0LmM6NTIx
CiBrYXNhbl9yZXBvcnQrMHhiZC8weDEwMCBtbS9rYXNhbi9yZXBvcnQuYzo2MzQKIGNoZWNrX3Jl
Z2lvbl9pbmxpbmUgbW0va2FzYW4vZ2VuZXJpYy5jOjE4MyBbaW5saW5lXQoga2FzYW5fY2hlY2tf
cmFuZ2UrMHgxMDgvMHgxZTAgbW0va2FzYW4vZ2VuZXJpYy5jOjE4OQogX19hc2FuX21lbWNweSsw
eDNkLzB4NzAgbW0va2FzYW4vc2hhZG93LmM6MTA2CiBkaVdyaXRlKzB4ZWEyLzB4MTk1MCBmcy9q
ZnMvamZzX2ltYXAuYzo3NTMKIHR4Q29tbWl0KzB4NmFiLzB4MTQwMCBmcy9qZnMvamZzX3R4bm1n
ci5jOjEyNTUKIGFkZF9taXNzaW5nX2luZGljZXMrMHg4MzQvMHhiMjAgZnMvamZzL2pmc19kdHJl
ZS5jOjI2NjMKIGpmc19yZWFkZGlyKzB4MWIxZS8weDI2ZDAgZnMvamZzL2pmc19kdHJlZS5jOjMw
MTkKIHdyYXBfZGlyZWN0b3J5X2l0ZXJhdG9yKzB4YTIvMHhmMCBmcy9yZWFkZGlyLmM6NjUKIGl0
ZXJhdGVfZGlyKzB4MmI1LzB4YWMwIGZzL3JlYWRkaXIuYzoxMDgKIF9fZG9fc3lzX2dldGRlbnRz
NjQgZnMvcmVhZGRpci5jOjQwMyBbaW5saW5lXQogX19zZV9zeXNfZ2V0ZGVudHM2NCBmcy9yZWFk
ZGlyLmM6Mzg5IFtpbmxpbmVdCiBfX3g2NF9zeXNfZ2V0ZGVudHM2NCsweDE1NC8weDJlMCBmcy9y
ZWFkZGlyLmM6Mzg5CiBkb19zeXNjYWxsX3g2NCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MiBb
aW5saW5lXQogZG9fc3lzY2FsbF82NCsweGNiLzB4MjYwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5j
OjgzCiBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg3Ny8weDdmClJJUDogMDAzMzow
eDdmZmFmZmRiODVhZApDb2RlOiAwMiBiOCBmZiBmZiBmZiBmZiBjMyA2NiAwZiAxZiA0NCAwMCAw
MCBmMyAwZiAxZSBmYSA0OCA4OSBmOCA0OAo4OSBmNyA0OCA4OSBkNiA0OCA4OSBjYSA0ZCA4OSBj
MiA0ZCA4OSBjOCA0YyA4YiA0YyAyNCAwOCAwZiAwNSA8NDg+IDNkCjAxIGYwIGZmIGZmIDczIDAx
IGMzIDQ4IGM3IGMxIGE4IGZmIGZmIGZmIGY3IGQ4IDY0IDg5IDAxIDQ4ClJTUDogMDAyYjowMDAw
N2ZmYjAwZDQxZjk4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwZDkK
UkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDdmZmIwMDA0NWZhMCBSQ1g6IDAwMDA3ZmZh
ZmZkYjg1YWQKUkRYOiAwMDAwMDAwMDAwMDAwMDVkIFJTSTogMDAwMDQwMDAwMDAwMDJjMCBSREk6
IDAwMDAwMDAwMDAwMDAwMDUKUkJQOiAwMDAwN2ZmYWZmZTZhOGQ2IFIwODogMDAwMDAwMDAwMDAw
MDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAw
MDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMDAwMDAKUjEzOiAwMDAwMDAwMDAwMDAwMDAw
IFIxNDogMDAwMDdmZmIwMDA0NWZhMCBSMTU6IDAwMDA3ZmZiMDBkMjIwMDAKIDwvVEFTSz4KCkFs
bG9jYXRlZCBieSB0YXNrIDkzODc6CiBrYXNhbl9zYXZlX3N0YWNrKzB4MjQvMHg1MCBtbS9rYXNh
bi9jb21tb24uYzo0Nwoga2FzYW5fc2F2ZV90cmFjaysweDE0LzB4NDAgbW0va2FzYW4vY29tbW9u
LmM6NjgKIHVucG9pc29uX3NsYWJfb2JqZWN0IG1tL2thc2FuL2NvbW1vbi5jOjMxOSBbaW5saW5l
XQogX19rYXNhbl9zbGFiX2FsbG9jKzB4OTcvMHhhMCBtbS9rYXNhbi9jb21tb24uYzozNDUKIGth
c2FuX3NsYWJfYWxsb2MgaW5jbHVkZS9saW51eC9rYXNhbi5oOjI1MCBbaW5saW5lXQogc2xhYl9w
b3N0X2FsbG9jX2hvb2sgbW0vc2x1Yi5jOjQxMTUgW2lubGluZV0KIHNsYWJfYWxsb2Nfbm9kZSBt
bS9zbHViLmM6NDE2NCBbaW5saW5lXQoga21lbV9jYWNoZV9hbGxvY19ub3Byb2YrMHgxNjcvMHg0
MDAgbW0vc2x1Yi5jOjQxNzEKIF9fa2VybmZzX25ld19ub2RlKzB4ZDQvMHg4ZDAgZnMva2VybmZz
L2Rpci5jOjYyNAoga2VybmZzX25ld19ub2RlKzB4MTg1LzB4MjUwIGZzL2tlcm5mcy9kaXIuYzo3
MDAKIF9fa2VybmZzX2NyZWF0ZV9maWxlKzB4NTUvMHgzNzAgZnMva2VybmZzL2ZpbGUuYzoxMDM0
CiBzeXNmc19hZGRfZmlsZV9tb2RlX25zKzB4MjExLzB4NDAwIGZzL3N5c2ZzL2ZpbGUuYzozMTMK
IGNyZWF0ZV9maWxlcysweDE4Ni8weDZiMCBmcy9zeXNmcy9ncm91cC5jOjc2CiBpbnRlcm5hbF9j
cmVhdGVfZ3JvdXArMHgzYzMvMHg4YTAgZnMvc3lzZnMvZ3JvdXAuYzoxODMKIGludGVybmFsX2Ny
ZWF0ZV9ncm91cHMrMHg5ZS8weDE1MCBmcy9zeXNmcy9ncm91cC5jOjIyMwogZGV2aWNlX2FkZF9n
cm91cHMgZHJpdmVycy9iYXNlL2NvcmUuYzoyODEyIFtpbmxpbmVdCiBkZXZpY2VfYWRkX2F0dHJz
KzB4ZGQvMHg2NjAgZHJpdmVycy9iYXNlL2NvcmUuYzoyODc2CiBkZXZpY2VfYWRkKzB4NmM5LzB4
MTQ5MCBkcml2ZXJzL2Jhc2UvY29yZS5jOjM2MTkKIG5ldGRldl9yZWdpc3Rlcl9rb2JqZWN0KzB4
MTg1LzB4M2IwIG5ldC9jb3JlL25ldC1zeXNmcy5jOjIxNzAKIHJlZ2lzdGVyX25ldGRldmljZSsw
eGYyNS8weDE3NzAgbmV0L2NvcmUvZGV2LmM6MTA5NDkKIHZldGhfbmV3bGluaysweDNhNC8weDhi
MCBkcml2ZXJzL25ldC92ZXRoLmM6MTg0NAogcnRubF9uZXdsaW5rX2NyZWF0ZSsweDJkOC8weDcw
MCBuZXQvY29yZS9ydG5ldGxpbmsuYzozNzk2CiBfX3J0bmxfbmV3bGluaysweDIzYy8weGE4MCBu
ZXQvY29yZS9ydG5ldGxpbmsuYzozOTA3CiBydG5sX25ld2xpbmsrMHg3ZWIvMHhjOTAgbmV0L2Nv
cmUvcnRuZXRsaW5rLmM6NDAyMgogcnRuZXRsaW5rX3Jjdl9tc2crMHg5ZjQvMHhmYzAgbmV0L2Nv
cmUvcnRuZXRsaW5rLmM6NjkxMgogbmV0bGlua19yY3Zfc2tiKzB4MTY4LzB4NDUwIG5ldC9uZXRs
aW5rL2FmX25ldGxpbmsuYzoyNTQzCiBuZXRsaW5rX3VuaWNhc3Rfa2VybmVsIG5ldC9uZXRsaW5r
L2FmX25ldGxpbmsuYzoxMzIyIFtpbmxpbmVdCiBuZXRsaW5rX3VuaWNhc3QrMHg1NTIvMHg4MDAg
bmV0L25ldGxpbmsvYWZfbmV0bGluay5jOjEzNDgKIG5ldGxpbmtfc2VuZG1zZysweDhiMy8weGQ5
MCBuZXQvbmV0bGluay9hZl9uZXRsaW5rLmM6MTg5Mgogc29ja19zZW5kbXNnX25vc2VjIG5ldC9z
b2NrZXQuYzo3MTggW2lubGluZV0KIF9fc29ja19zZW5kbXNnIG5ldC9zb2NrZXQuYzo3MzMgW2lu
bGluZV0KIF9fc3lzX3NlbmR0bysweDRiMi8weDUyMCBuZXQvc29ja2V0LmM6MjE4NwogX19kb19z
eXNfc2VuZHRvIG5ldC9zb2NrZXQuYzoyMTk0IFtpbmxpbmVdCiBfX3NlX3N5c19zZW5kdG8gbmV0
L3NvY2tldC5jOjIxOTAgW2lubGluZV0KIF9feDY0X3N5c19zZW5kdG8rMHhlNC8weDFkMCBuZXQv
c29ja2V0LmM6MjE5MAogZG9fc3lzY2FsbF94NjQgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTIg
W2lubGluZV0KIGRvX3N5c2NhbGxfNjQrMHhjYi8weDI2MCBhcmNoL3g4Ni9lbnRyeS9jb21tb24u
Yzo4MwogZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NzcvMHg3ZgoKVGhlIGJ1Z2d5
IGFkZHJlc3MgYmVsb25ncyB0byB0aGUgb2JqZWN0IGF0IGZmZmY4ODgwMmE3ZDQwMDAKIHdoaWNo
IGJlbG9uZ3MgdG8gdGhlIGNhY2hlIGtlcm5mc19ub2RlX2NhY2hlIG9mIHNpemUgMTc2ClRoZSBi
dWdneSBhZGRyZXNzIGlzIGxvY2F0ZWQgMTYgYnl0ZXMgdG8gdGhlIHJpZ2h0IG9mCiBhbGxvY2F0
ZWQgMTc2LWJ5dGUgcmVnaW9uIFtmZmZmODg4MDJhN2Q0MDAwLCBmZmZmODg4MDJhN2Q0MGIwKQoK
VGhlIGJ1Z2d5IGFkZHJlc3MgYmVsb25ncyB0byB0aGUgcGh5c2ljYWwgcGFnZToKcGFnZTogcmVm
Y291bnQ6MCBtYXBjb3VudDowIG1hcHBpbmc6MDAwMDAwMDAwMDAwMDAwMCBpbmRleDoweDAgcGZu
OjB4MmE3ZDQKZmxhZ3M6IDB4ZmZmMDAwMDAwMDAwMDAobm9kZT0wfHpvbmU9MXxsYXN0Y3B1cGlk
PTB4N2ZmKQpwYWdlX3R5cGU6IGY1KHNsYWIpCnJhdzogMDBmZmYwMDAwMDAwMDAwMCBmZmZmODg4
MDQwNGZiMTQwIGRlYWQwMDAwMDAwMDAxMjIgMDAwMDAwMDAwMDAwMDAwMApyYXc6IDAwMDAwMDAw
MDAwMDAwMDAgMDAwMDAwMDAwMDExMDAxMSAwMDAwMDAwMGY1MDAwMDAwIDAwMDAwMDAwMDAwMDAw
MDAKcGFnZSBkdW1wZWQgYmVjYXVzZToga2FzYW46IGJhZCBhY2Nlc3MgZGV0ZWN0ZWQKcGFnZV9v
d25lciB0cmFja3MgdGhlIHBhZ2UgYXMgYWxsb2NhdGVkCnBhZ2UgbGFzdCBhbGxvY2F0ZWQgdmlh
IG9yZGVyIDAsIG1pZ3JhdGV0eXBlIFVubW92YWJsZSwgZ2ZwX21hc2sKMHg1MmNjMChHRlBfS0VS
TkVMfF9fR0ZQX05PV0FSTnxfX0dGUF9OT1JFVFJZfF9fR0ZQX0NPTVApLCBwaWQgOTM4NywKdGdp
ZCA5Mzg3IChzeXotZXhlY3V0b3IpLCB0cyA2Nzc3OTcyNDE0OSwgZnJlZV90cyA2NjA1NTExMjQw
Nwogc2V0X3BhZ2Vfb3duZXIgaW5jbHVkZS9saW51eC9wYWdlX293bmVyLmg6MzIgW2lubGluZV0K
IHBvc3RfYWxsb2NfaG9vaysweDFhMy8weDFkMCBtbS9wYWdlX2FsbG9jLmM6MTU1MQogcHJlcF9u
ZXdfcGFnZSBtbS9wYWdlX2FsbG9jLmM6MTU1OSBbaW5saW5lXQogZ2V0X3BhZ2VfZnJvbV9mcmVl
bGlzdCsweDhhNS8weGZhMCBtbS9wYWdlX2FsbG9jLmM6MzQ3NwogX19hbGxvY19mcm96ZW5fcGFn
ZXNfbm9wcm9mKzB4MWQ4LzB4M2IwIG1tL3BhZ2VfYWxsb2MuYzo0NzM5CiBhbGxvY19wYWdlc19t
cG9sKzB4MWYyLzB4NTUwIG1tL21lbXBvbGljeS5jOjIyNzAKIGFsbG9jX3NsYWJfcGFnZSBtbS9z
bHViLmM6MjQyMyBbaW5saW5lXQogYWxsb2NhdGVfc2xhYisweDIyOS8weDMxMCBtbS9zbHViLmM6
MjU4NwogX19fc2xhYl9hbGxvYysweDdmMy8weDEyYjAgbW0vc2x1Yi5jOjM4MjYKIF9fc2xhYl9h
bGxvYy5jb25zdHByb3AuMCsweDU2LzB4YzAgbW0vc2x1Yi5jOjM5MTYKIF9fc2xhYl9hbGxvY19u
b2RlIG1tL3NsdWIuYzozOTkxIFtpbmxpbmVdCiBzbGFiX2FsbG9jX25vZGUgbW0vc2x1Yi5jOjQx
NTIgW2lubGluZV0KIGttZW1fY2FjaGVfYWxsb2Nfbm9wcm9mKzB4Mjc1LzB4NDAwIG1tL3NsdWIu
Yzo0MTcxCiBfX2tlcm5mc19uZXdfbm9kZSsweGQ0LzB4OGQwIGZzL2tlcm5mcy9kaXIuYzo2MjQK
IGtlcm5mc19uZXdfbm9kZSsweDE4NS8weDI1MCBmcy9rZXJuZnMvZGlyLmM6NzAwCiBfX2tlcm5m
c19jcmVhdGVfZmlsZSsweDU1LzB4MzcwIGZzL2tlcm5mcy9maWxlLmM6MTAzNAogc3lzZnNfYWRk
X2ZpbGVfbW9kZV9ucysweDIxMS8weDQwMCBmcy9zeXNmcy9maWxlLmM6MzEzCiBjcmVhdGVfZmls
ZXMrMHgxODYvMHg2YjAgZnMvc3lzZnMvZ3JvdXAuYzo3NgogaW50ZXJuYWxfY3JlYXRlX2dyb3Vw
KzB4M2MzLzB4OGEwIGZzL3N5c2ZzL2dyb3VwLmM6MTgzCiBpbnRlcm5hbF9jcmVhdGVfZ3JvdXBz
KzB4OWUvMHgxNTAgZnMvc3lzZnMvZ3JvdXAuYzoyMjMKIGRldmljZV9hZGRfZ3JvdXBzIGRyaXZl
cnMvYmFzZS9jb3JlLmM6MjgxMiBbaW5saW5lXQogZGV2aWNlX2FkZF9hdHRycysweGRkLzB4NjYw
IGRyaXZlcnMvYmFzZS9jb3JlLmM6Mjg3NgpwYWdlIGxhc3QgZnJlZSBwaWQgODkgdGdpZCA4OSBz
dGFjayB0cmFjZToKIHJlc2V0X3BhZ2Vfb3duZXIgaW5jbHVkZS9saW51eC9wYWdlX293bmVyLmg6
MjUgW2lubGluZV0KIGZyZWVfcGFnZXNfcHJlcGFyZSBtbS9wYWdlX2FsbG9jLmM6MTEyNyBbaW5s
aW5lXQogZnJlZV91bnJlZl9mb2xpb3MrMHg4ZjQvMHgxMmIwIG1tL3BhZ2VfYWxsb2MuYzoyNzA3
CiBzaHJpbmtfZm9saW9fbGlzdCsweDJiZjIvMHgzZWEwIG1tL3Ztc2Nhbi5jOjE1ODcKIHNocmlu
a19pbmFjdGl2ZV9saXN0KzB4MzcwLzB4YzkwIG1tL3Ztc2Nhbi5jOjIwMDAKIHNocmlua19saXN0
IG1tL3Ztc2Nhbi5jOjIyMzggW2lubGluZV0KIHNocmlua19scnV2ZWMrMHgyNmUvMHhhNjAgbW0v
dm1zY2FuLmM6NTc0OQogc2hyaW5rX25vZGVfbWVtY2dzKzB4NGZjLzB4OWMwIG1tL3Ztc2Nhbi5j
OjU5NTEKIHNocmlua19ub2RlKzB4MWM1LzB4MTE4MCBtbS92bXNjYW4uYzo1OTkyCiBrc3dhcGRf
c2hyaW5rX25vZGUgbW0vdm1zY2FuLmM6NjgwNyBbaW5saW5lXQogYmFsYW5jZV9wZ2RhdCsweDhi
ZS8weDEzMjAgbW0vdm1zY2FuLmM6Njk5OQoga3N3YXBkKzB4MzJiLzB4NDYwIG1tL3Ztc2Nhbi5j
OjcyNjQKIGt0aHJlYWQrMHgzYjMvMHg3NjAga2VybmVsL2t0aHJlYWQuYzo0NjQKIHJldF9mcm9t
X2ZvcmsrMHg0OC8weDgwIGFyY2gveDg2L2tlcm5lbC9wcm9jZXNzLmM6MTQ4CiByZXRfZnJvbV9m
b3JrX2FzbSsweDFhLzB4MzAgYXJjaC94ODYvZW50cnkvZW50cnlfNjQuUzoyNDQKCk1lbW9yeSBz
dGF0ZSBhcm91bmQgdGhlIGJ1Z2d5IGFkZHJlc3M6CiBmZmZmODg4MDJhN2QzZjgwOiAwMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMAogZmZmZjg4ODAyYTdkNDAw
MDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAKPmZmZmY4
ODgwMmE3ZDQwODA6IDAwIDAwIDAwIDAwIDAwIDAwIGZjIGZjIGZjIGZjIGZjIGZjIGZjIGZjIDAw
IDAwCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCiBmZmZmODg4
MDJhN2Q0MTAwOiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MAogZmZmZjg4ODAyYTdkNDE4MDogMDAgMDAgMDAgMDAgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMg
MDAgMDAgMDAgMDAKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09ClRoYW5rcywKWmhpemh1byBUYW5nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
